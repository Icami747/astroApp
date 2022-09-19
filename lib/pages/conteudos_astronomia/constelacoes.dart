import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

class Constelacoes extends StatefulWidget {
  const Constelacoes({Key? key}) : super(key: key);

  @override
  ConstelacoesState createState() => ConstelacoesState();
}

class ConstelacoesState extends State<Constelacoes> {

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
                          "Constelações",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                             'https://www.institutoclaro.org.br/educacao/wp-content/uploads/sites/2/2020/12/constelacao-scaled.jpg',
                          ),
                        ),


                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Constelações são agrupamentos de estrelas ligadas por linhas imaginárias usadas para representar objetos, animais, criaturas mitológicas ou deuses. O conceito de constelação surgiu durante a Pré-História, quando as pessoas as usavam para descrever suas crenças ou mitologia, por isso, diferentes civilizações adotaram, ao longo da história, as suas próprias constelações.\n\n'
                          'As constelações também desempenharam importante papel durante as navegações, pois eram usadas como orientação, além disso, a palavra constelação tem origem no latim constelattio, cujo significado é agrupamento de estrelas.\n\n'
                          'Para a Astronomia, as principais constelações são aquelas que foram catalogadas no ano de 1922: as 88 constelações, das quais 48 são oriundas dos estudos de Claudio Ptolomeu e as outras 40 que foram observadas entre os séculos XVII e XVIII.\n\n'
                          'Entre o grande número de constelações existentes, podemos ressaltar aquelas que são utilizadas para a definição do zodíaco. O zodíaco é a área do céu próxima à eclíptica (plano em que o Sol realiza sua órbita aparente em relação à Terra), ou seja, é o caminho aparente pelo qual o Sol desloca-se durante o período de um ano.\n\n'
                          'Nesse caminho, o Sol passa na frente de 12 constelações: Áries, Touro, Gêmeos, Câncer, Leão, Virgem, Libra, Escorpião, Sagitário, Capricórnio, Aquário e Peixes. Entretanto, no caminho aparente do Sol, ele também passa sobre a constelação de Ophiuccus (Serpentário), que não é reconhecida pelos astrólogos, uma vez que a passagem do Sol por ela é breve, de aproximadamente 19 dias.\n\n'
                          'Além das constelações do zodíaco, podemos listar diversas importantes constelações, como:\n'
                          'Ursa Maior: Uma das constelações mais famosas do hemisfério celestial norte, também é conhecida em outras partes do mundo como O Arado;\n'
                          'Ursa Menor: É uma constelação de forma similar à Ursa Maior, porém, reduzida;\n'
                          'Órion: A constelação de Órion fica no equador celeste, é formada por estrelas muito brilhantes como Betelgeuse;\n'
                          'Cassiopeia: Na mitologia grega, Cassiopeia era uma rainha etíope que comparara sua beleza à beleza das Nereidas e, por isso, fora castigada;\n'
                          'Cão Maior: É uma constelação do hemisfério celestial sul, sua estrela mais brilhante é Sirius: a estrela mais brilhante do céu noturno;\n'
                          'Pegasus: Essa constelação recebeu o seu nome após o mito grego do cavalo alado;\n'
                          'Andrômeda: Andrômeda era filha da rainha Cassiopeia, de acordo com a mitologia grega;\n'
                          'Aquila: A águia é uma constelação do equador celeste, essa constelação representa a águia que carregava os raios de Zeus na mitologia grega.\n',
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
