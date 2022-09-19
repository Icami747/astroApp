import 'package:astroapp/pages/home_questoes.dart';
import 'package:astroapp/pages/noticiasPage.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../../domain/noticias.dart';
import '../../widget/lista_noticias_card.dart';
import 'package:astroapp/data/bd.dart';

class NoticiasI extends StatefulWidget {
  const NoticiasI({Key? key}) : super(key: key);

  @override
  State<NoticiasI> createState() => _NoticiasIState();
}

class _NoticiasIState extends State<NoticiasI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
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
                          'Noticias',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/06/78612212_2846136555417292_2868582208589791232_n.jpg?w=876&h=484&crop=1',
                          ),
                        ),
                        Center(
                            child: Text(
                          '\n\nBrasil será sede de lançamento de foguete sul-coreano\n\n',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        )),
                        Container(
                            child: Text(
                          'A startup sul-coreana Innospace pode se tornar a primeira companhia privada a fazer um lançamento de foguete na Base de Alcântara, no Maranhão. A operação, de caráter experimental, está prevista para ser feita em dezembro. \n\n'
                          'A informação foi divulgada pelo presidente da Agência Espacial Brasileira, Carlos Moura. A empresa pretende realizar lançamentos com menor custo benefício em diferentes locais do mundo.\n\n'
                          'A Base de Alcântara é administrada pela Força Aérea Brasileira (FAB). A localização é considerada estratégica, por ser próxima à linha do Equador e na costa do Atlântico, o que pode significar uma economia de combustível para os projéteis.\n\n'
                          'Outras empresas estrangeiras, como a canadense C6 Launch Systems, a estadunidense Hyperion e a Virgin Orbit, do britânico Richard Branson, também obtiveram licença para operar no local.\n\n',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
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
