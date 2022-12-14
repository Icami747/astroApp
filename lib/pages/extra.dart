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
                              'Atualmente o ensino para a ??rea de astronomia e astron??utica come??a a ter um apre??o maior diante do p??blico em geral. No entanto, apesar de olimp??adas como a OBA (Olimp??ada Brasileira de Astronomia e Astron??utica), aquilo que ?? exposto na internet ainda se v?? muito desorganizado, n??o linkado, por assim dizer.\n\n'
                              '?? justamente para isso que este projeto surge. O AstroAPP, por meio de seus desenvolvedores, busca promover a difus??o do conhecimento da astronomia e da astron??utica, tudo num ??nico espa??o, num aplicativo completo. E o melhor de tudo: gratuito!\n\n'
                              'Nossa miss??o ?? mostrar para as pessoas a grandiosidade do universo, com toda sua riqueza e esplendor pr??prios, e tudo que com ele se relaciona. Permitindo uma defini????o mais subjetiva, ?? de nossa inten????o promover o encanto deste mundo ??nico. Vamos tripular nesse foguete?',
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
