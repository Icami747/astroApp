import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

class Planetas extends StatefulWidget {
  const Planetas({Key? key}) : super(key: key);

  @override
  PlanetasState createState() => PlanetasState();
}

class PlanetasState extends State<Planetas> {

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
                          "Planetas",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                           'https://diariodonordeste.verdesmares.com.br/image/contentid/policy:1.3239440:1654285746/Sistema-Solar.jpg',
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Um planeta é um corpo celeste que orbita uma estrela ou um remanescente de estrela, com massa suficiente para se tornar esférico pela sua própria gravidade, mas não ao ponto de causar fusão termonuclear, e que tenha limpado de planetesimais a sua região vizinha (dominância orbital). O termo planeta é antigo, com ligações com a história, astrologia, ciência, mitologia e religião. Os planetas eram vistos por muitas culturas antigas como divinos ou emissários de deuses. À medida que o conhecimento científico evoluiu, a percepção humana sobre os planetas mudou, incorporando diversos tipos de objetos.\n\n'
                          'Os planetas do Sistema Solar formam um agrupamento de oito corpos celestes que orbitam o Sol: Mercúrio, Vênus Terra, Marte, Júpiter, Saturno, Urano e Netuno. São classificados em planetas rochosos (formados predominantemente por rochas e minerais) e em planetas gasosos (constituídos por gases diversos). Até tempos atrás, mais precisamente 2006, o Sistema Solar era composto por nove planetas, porém Plutão foi reclassificado como planeta-anão no referido ano.\n',
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
                              MaterialPageRoute(builder: (context) => const AssuntosQuestoes()),
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
