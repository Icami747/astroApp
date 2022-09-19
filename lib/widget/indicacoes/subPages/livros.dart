import 'package:astroapp/domain/indicacoes/subPagesDomain/livros.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardLivros extends StatefulWidget {
  final LivrosDomain livrosDomain;
  const CardLivros({Key? key, required this.livrosDomain}) : super(key: key);

  @override
  State<CardLivros> createState() => _CardLivrosState();
}

class _CardLivrosState extends State<CardLivros> {
  //final String _link = "";

  Future<void> abrirLivro() async {
    Uri _url = Uri.parse(
      widget.livrosDomain.link,
    );

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsets.only(bottom:24),
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
    
        child: Column(
          children: [
            Text(
            widget.livrosDomain.titulocard,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Image.network(
            widget.livrosDomain.imagem,
            width: 200,
            height: 100,
          ),
          SizedBox(height: 16),
          Text(
            widget.livrosDomain.texto,
          ),
          ElevatedButton(
            onPressed: () => abrirLivro(),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Ver Livro',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
          ),
          ],
        ),
        
        ),


      ],//cloumn retornado
    );
  }

  
}
