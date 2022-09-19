import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

class Introducao_Astronautica extends StatefulWidget {
  const Introducao_Astronautica({Key? key}) : super(key: key);

  @override
  _Introducao_AstronauticaState createState() => _Introducao_AstronauticaState();
}

class _Introducao_AstronauticaState extends State<Introducao_Astronautica> {

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
                          "Introdução - Astronáutica",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Soyuz_TMA-1.jpg/1200px-Soyuz_TMA-1.jpg',
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Ciência que se dedica à exploração do espaço cósmico, a história da astronáutica no século XX pode ser dividida em três períodos: o das descobertas realizadas até o fim da II Guerra Mundial, o da corrida espacial entre EUA e URSS e o dos projetos pós-Guerra Fria.\n\n'
                          'Entre as descobertas realizadas até 1945 destacam-se as primeiras tentativas de fazer voar foguetes espaciais. Esses aparelhos experimentais foram criados com base na ideia de atacar adversários com mísseis, como os famosos V-1 e V-2 alemães. É assim que nascem os lançadores de satélites e de naves espaciais de hoje.\n\n'
                          'Durante a corrida espacial, a longa disputa entre EUA e URSS resulta em grandes avanços científicos e tecnológicos, especialmente nas áreas da aeronáutica, de telecomunicações e de produção de armamentos.\n\n'
                          'A disputa começa de fato em 1957, ano em que os soviéticos lançam o Sputnik 1, primeiro satélite artificial a entrar em órbita. Um mês depois sobe o primeiro ser vivo, a cadela Laika, a bordo do Sputnik 2.\n\n'
                          'A reação dos EUA vem em 1958, com a criação da Nasa, responsável pelo programa espacial norte-americano. No mesmo ano ela lança seu primeiro satélite artificial, o Explorer 1.\n\n'
                          'Nos anos seguintes, as duas potências investem em projetos pioneiros de exploração da Lua (pela nave russa Luna) e de reconhecimento dos planetas Vênus (pela russa Venera e pela norte-americana Mariner), Marte e Mercúrio (pela norte-americana Mariner).\n\n',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),

                        
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "IR PARA QUESTÕES",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AssuntosQuestoes()),
                              );
                          },
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
}
