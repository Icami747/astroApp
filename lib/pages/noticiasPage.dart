import 'package:astroapp/data/noticias_dao.dart';
import 'package:astroapp/pages/conteudos_astronomia/planetas.dart';
import 'package:astroapp/pages/indicacoes/principal.dart';
import 'package:astroapp/pages/menu_astronautica.dart';
import 'package:astroapp/pages/menu_astronomia.dart';
import 'package:astroapp/pages/noticias/noticicaI.dart';
import 'package:astroapp/pages/noticiasPage.dart';
import 'package:astroapp/pages/novidadesPage.dart';
import 'package:astroapp/pages/extra.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../domain/noticias.dart';
import '../widget/lista_noticias_card.dart';
import 'package:astroapp/data/bd.dart';

import 'assuntosQuest_page.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({Key? key}) : super(key: key);

  @override
  _NoticiasPageState createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  Future<List<Noticias>> listaNoticias = NoticiasDao().getCardNoticias();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text('AstroAPP'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text(
                'Notícias',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              buildListView(),
            ],
          ),
        ));
  }

  buildListView() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NoticiasI(),
        ));
      },
      child: FutureBuilder<List<Noticias>>(
        future: listaNoticias,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Noticias> listaNoticias = snapshot.data ?? [];

            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listaNoticias.length,
              itemBuilder: (BuildContext context, int index) {
                return CardNoticias(noticias: listaNoticias[index]);
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  void onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const IndicacoesPage();
        },
      ),
    );
  }
}
