import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:astroapp/pages/conteudos_astronomia/introducao_astronomia.dart';
import 'package:astroapp/widget/lista_questoes_card.dart';
import 'package:flutter/material.dart';

class Angulos_De_Euler extends StatefulWidget {
  const Angulos_De_Euler({Key? key}) : super(key: key);

  @override
  _Angulos_De_EulerState createState() => _Angulos_De_EulerState();
}

class _Angulos_De_EulerState extends State<Angulos_De_Euler> {

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
                          "Ângulos de Êuler",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Eulerangles.svg/800px-Eulerangles.svg.png', height: 400,
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Os Ângulos de Euler foram formulados por Leonard Euler para descreverem a orientação de um corpo rígido girante em um espaço euclidiano tridimensional. Neste caso, é útil fazer-se uso de dois sistemas de coordenadas: um sistema inercial fixo e outro que gira junto ao corpo em rotação. Para especificar a orientação do corpo girante em relação ao sistema inercial faz-se uso de três ângulos independentes. Estes são os ângulos de Euler.\n',
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
