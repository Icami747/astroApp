import 'package:astroapp/data/indicacoes/subPagesData/livros.dart';
import 'package:astroapp/domain/indicacoes/subPagesDomain/livros.dart';
import 'package:astroapp/widget/indicacoes/subPages/livros.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  Future<List<LivrosDomain>> lista_livros = LivrosData.getLivros();


  Future<void> abrirLivro() async {
    final Uri _url = Uri.parse(
        'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),

        child: ListView(
          children: [
          Text(
            'Livros e materiais diversos',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 16,),
        livrosListView(),
        ],
        ), 
        
      ),
    );
  }

  livrosListView() {
    return FutureBuilder<List<LivrosDomain>>(
      future: lista_livros,
      builder: ((context, snapshot) {
        
        if(snapshot.hasData) {
          List<LivrosDomain> lista_livros = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista_livros.length,
            itemBuilder: (context, index) {
              return CardLivros(livrosDomain: lista_livros[index],);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());

       }
      ),
    );
  }
}
