import 'package:astroapp/widget/lista_questoes_card.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/domain/questoes.dart';
import 'package:astroapp/data/bd.dart';

class HomeQuestoes extends StatefulWidget {

  const HomeQuestoes({Key? key}) : super(key: key);

  @override
  _HomeQuestoesState createState() => _HomeQuestoesState();
}

class _HomeQuestoesState extends State<HomeQuestoes> {

  Future<List<Questoes>> lista = BD.getCardQuestoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        title: const Text(
          'AstroAPP',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            buildListView()
          ],
        ),
      ),
    );
  }
  buildListView() {
    return FutureBuilder<List<Questoes>>(
      future: lista,
      builder: (context, snapshot) {

        if(snapshot.hasData) {
          List<Questoes> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardQuestoes(questoes: lista[index]);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());

      },
    );
  }
}