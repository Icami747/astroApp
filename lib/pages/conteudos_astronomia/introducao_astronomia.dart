import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

class Introducao_Astronomia extends StatefulWidget {
  const Introducao_Astronomia({Key? key}) : super(key: key);

  @override
  Introducao_AstronomiaState createState() => Introducao_AstronomiaState();
}

class Introducao_AstronomiaState extends State<Introducao_Astronomia> {

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
                          "Introdução - Astronomia",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Starsinthesky.jpg/1200px-Starsinthesky.jpg',
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Sendo considerada por muitos estudiosos a mais antiga das ciências e a fonte de conhecimentos e questionamentos para o surgimento dos demais saberes, a Astronomia é a ciência que estuda o Universo, desde a sua origem e formação aos astros que o compõe e os fenômenos que nele ocorrem. Originou-se a partir da observação dos astros e de seu efeito no cotidiano do ser humano, que desde a pré-história vem utilizando o conhecimento astronômico acumulado durante o tempo para desenvolver as atividades humanas.\n\n'
                          'No início, o conhecimento astronômico estava baseado essencialmente na observação dos astros e fenômenos visíveis a olho nu (o sol, a lua, o dia, a noite, as marés, as fases da lua etc), e se misturavam ao senso comum, à religião e às lendas, uma vez que vários povos acreditavam que esses astros eram deuses e que os fenômenos originados por eles dependiam do seu humor ou vontade. Assim, chineses, egípcios, assírios e babilônicos já observavam o espaço para determinar a contagem do tempo, utilizavam o sol e a lua para elaborar seus calendários, definir o melhor período para o plantio e colheita e para se localizar no espaço.\n\n'
                          'Na Grécia Antiga, diversos estudiosos realizaram pesquisas e formularam teorias sobre o Universo, algumas delas foram contestadas e outras são aceitas até hoje como, por exemplo, a teoria da esfericidade da Terra, de Pitágoras; o ano com duração de 365 dias e 6 horas, proposto por Eudóxio de Cnido; as explicações de Aristóteles para as fases da lua e os eclipses solar e lunar.\n\n'
                          'Com o passar do tempo a astronomia se afastou do senso comum e das religiões, desenvolvendo-se a partir da incorporação de novos conhecimentos obtidos a partir da interação com outras ciências, como por exemplo a Física, a Química a Biologia, a Geografia e das novas tecnologias, que passaram a ter um papel fundamental na observação dos astros e nas investigações dos fenômenos astronômicos.\n\n',
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
