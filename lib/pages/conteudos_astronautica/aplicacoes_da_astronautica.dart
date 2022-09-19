import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

class Aplicacoes_Da_Astronautica extends StatefulWidget {
  const Aplicacoes_Da_Astronautica({Key? key}) : super(key: key);

  @override
  _Aplicacoes_Da_AstronauticaState createState() =>
      _Aplicacoes_Da_AstronauticaState();
}

class _Aplicacoes_Da_AstronauticaState
    extends State<Aplicacoes_Da_Astronautica> {
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
                          "Aplicações da Astronáutica",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/0/0f/Artist%27s_Conception_of_Space_Station_Freedom_-_GPN-2003-00092.jpg',
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              'Desde o lançamento do satélite Sputnik em 1957 — o primeiro objeto enviado à órbita da Terra na história —, a tecnologia espacial evoluiu a passos largos, permitindo que a humanidade pisasse na Lua, que existisse uma estação espacial em órbita abrigando turmas periódicas de astronautas, e que sondas científicas estudassem de perto diversos outros mundos do Sistema Solar — com duas delas já tendo alcançado o espaço interestelar, por sinal. Para que missões do tipo sejam possíveis, são precisos muitos anos de desenvolvimento de novas tecnologias, e diversas delas acabam sendo adaptadas para beneficiar a humanidade aqui mesmo na Terra.\n\n'
                              'Hoje, uma variedade fascinante de coisas que fazem parte do nosso dia a dia devem sua existência às tecnologias espaciais. Nesta matéria, você confere algumas tecnologias que você usa e que foram desenvolvidas, na verdade, para a exploração espacial, mas que acabaram beneficiando e até mesmo transformando a nossa vida em sociedade.\n\n'
                              'Tecnologias espaciais que beneficiam a humanidade:\n'
                              'Filtro de água;\n'
                              'Câmera de celular;\n'
                              'Tênis de corrida;\n'
                              'Lentes refletoras de raios ultravioleta e resistentes a arranhões;\n'
                              'Etc.\n',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
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
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AssuntosQuestoes()),
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
