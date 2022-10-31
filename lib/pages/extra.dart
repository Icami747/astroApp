import 'package:astroapp/data/bd.dart';
import 'package:astroapp/domain/sobre.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/card_sobre.dart';

class Extra extends StatefulWidget {
  final List listaSobre;

  const Extra({
    Key? key,
    required this.listaSobre,
  }) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  Future<List<Sobre>> listaSobre = BD.getCardSobre();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'AstroApp',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                            child: Text(
                          "Sobre",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        const SizedBox(height: 16),
                        Container(
                          child: Image.asset(
                            'assets/if.jpg',
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              'Atualmente o ensino para a área de astronomia e astronáutica começa a ter um apreço maior diante do público em geral. No entanto, apesar de olimpíadas como a OBA (Olimpíada Brasileira de Astronomia e Astronáutica), aquilo que é exposto na internet ainda se vê muito desorganizado, não linkado, por assim dizer.\n\n'
                              'É justamente para isso que este projeto surge. O AstroAPP, por meio de seus desenvolvedores, busca promover a difusão do conhecimento da astronomia e da astronáutica, tudo num único espaço, num aplicativo completo. E o melhor de tudo: gratuito!\n\n'
                              'Nossa missão é mostrar para as pessoas a grandiosidade do universo, com toda sua riqueza e esplendor próprios, e tudo que com ele se relaciona. Permitindo uma definição mais subjetiva, é de nossa intenção promover o encanto deste mundo único. Vamos tripular nesse foguete?',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                        Container(
                          padding: const EdgeInsets.only(
                              right: 10, bottom: 10, left: 10, top: 30),
                          child: Text(
                            'Contate os desenvolvedores',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(),
                          child: Wrap(
                              spacing: 8.0, // gap between adjacent chips
                              runSpacing: 4.0, // gap between lines
                              children: [
                                sobreListView(),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  sobreListView() {
    return FutureBuilder<List<Sobre>>(
      future: listaSobre,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Sobre> listaSobre = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listaSobre.length,
            itemBuilder: (context, index) {
              return CardSobre(
                sobre: listaSobre[index],
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
