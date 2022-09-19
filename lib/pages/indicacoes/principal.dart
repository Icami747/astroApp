import 'package:astroapp/data/indicacoes/principal_bd.dart';
import 'package:astroapp/domain/indicacoes/principal_domain.dart';
import 'package:astroapp/pages/indicacoes/subPages/livros.dart';
import 'package:astroapp/pages/indicacoes/subPages/outrasredes.dart';
import 'package:astroapp/pages/indicacoes/subPages/sites.dart';
import 'package:astroapp/pages/indicacoes/subPages/youtube.dart';
import 'package:astroapp/widget/indicacoes/indicacoesCard.dart';
import 'package:flutter/material.dart';

class IndicacoesPage extends StatefulWidget {
  const IndicacoesPage({Key? key}) : super(key: key);

  @override
  State<IndicacoesPage> createState() => _IndicacoesPageState();
}

class _IndicacoesPageState extends State<IndicacoesPage> {
  
  Future<List<PrincipalDomain>> lista_principal = PrincipalData.getListaIndicacoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: ListView(
          children: [
            const Text(
            'Indicações',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
            SizedBox(height: 24,),
            principalListView()
          ],
        ),
      ),
    );
  }

  principalListView() {
    return FutureBuilder<List<PrincipalDomain>>(
      future: lista_principal,
      builder: ((context, snapshot) {
        
        if(snapshot.hasData) {
          List<PrincipalDomain> lista_principal = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista_principal.length,
            itemBuilder: (context, index) {
              return IndicacoesCard(principal_domain: lista_principal[index],);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());

       }
      ),
    );
  }
}
