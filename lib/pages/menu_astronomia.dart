import 'package:astroapp/pages/conteudos_astronomia/constelacoes.dart';
import 'package:astroapp/pages/conteudos_astronomia/introducao_astronomia.dart';
import 'package:astroapp/pages/conteudos_astronomia/planetas.dart';
import 'package:flutter/material.dart';


class Menu_Astronomia extends StatefulWidget {
  const Menu_Astronomia({Key? key}) : super(key: key);

  @override
  Menu_AstronomiaState createState() => Menu_AstronomiaState();
}

class Menu_AstronomiaState extends State<Menu_Astronomia> {


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
                          "Astronomia",
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
                            "INTRODUÇÃO À ASTRONOMIA",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronomia()),
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
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Starsinthesky.jpg/1200px-Starsinthesky.jpg',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronomia()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "PLANETAS",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Planetas()),
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
                            'https://diariodonordeste.verdesmares.com.br/image/contentid/policy:1.3239440:1654285746/Sistema-Solar.jpg',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Planetas()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "CONSTELAÇÕES",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Constelacoes()),
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
                            'https://www.institutoclaro.org.br/educacao/wp-content/uploads/sites/2/2020/12/constelacao-scaled.jpg',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Constelacoes()),
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
