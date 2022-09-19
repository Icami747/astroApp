import 'package:astroapp/pages/conteudos_astronautica/angulos_de_euler.dart';
import 'package:astroapp/pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import 'package:astroapp/pages/conteudos_astronautica/introducao_astronautica.dart';
import 'package:flutter/material.dart';


class Menu_Astronautica extends StatefulWidget {
  const Menu_Astronautica({Key? key}) : super(key: key);

  @override
  Menu_AstronauticaState createState() => Menu_AstronauticaState();
}

class Menu_AstronauticaState extends State<Menu_Astronautica> {


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
                          "Astronáutica",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "INTRODUÇÃO À ASTRONÁUTICA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,

                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronautica()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                           decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Soyuz_TMA-1.jpg/1200px-Soyuz_TMA-1.jpg',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronautica()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "ÂNGULOS DE EULER",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Angulos_De_Euler()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Eulerangles.svg/800px-Eulerangles.svg.png', height: 400
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Angulos_De_Euler()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "APLICAÇÕES DA ASTRONÁUTICA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Aplicacoes_Da_Astronautica()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                           decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/0/0f/Artist%27s_Conception_of_Space_Station_Freedom_-_GPN-2003-00092.jpg',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Aplicacoes_Da_Astronautica()),
                              );
                          },
                          ),
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
