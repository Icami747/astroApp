import 'package:astroapp/domain/topicos.dart';
import 'package:astroapp/pages/conteudos_astronomia/planetas.dart';
import 'package:astroapp/pages/indicacoes/principal.dart';
import 'package:astroapp/pages/menu_astronautica.dart';
import 'package:astroapp/pages/menu_astronomia.dart';
import 'package:astroapp/pages/noticias/noticicaI.dart';
import 'package:astroapp/pages/noticiasPage.dart';
import 'package:astroapp/pages/novidadesPage.dart';
import 'package:astroapp/pages/sobre.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../domain/noticias.dart';
import '../domain/topicos.dart';
import '../widget/lista_noticias_card.dart';
import '../widget/lista_topicos_card.dart';
import 'package:astroapp/data/bd.dart';
import 'assuntosQuest_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Noticias>> listaNoticias = BD.getCardNoticias();
  Future<List<Topicos>> listaTopicos = BD.getCardTopicos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text('AstroAPP'),
          actions: [
            // Método pra colocar imagem ao centro (talvez dê errado dependendo da resolução de cada aparelho)
            /*Image.asset(
              'assets/imagens/logo_astroapp.png',
              alignment: AlignmentDirectional.center,
              width: 315,
            ),*/

            InkWell(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CadastroPage()),
                  );
                },
                icon: const Icon(Icons.person),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 18, 30, 138),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
                child: InkWell(
                  child: Row(
                    children: [
                      Container(
                        height: 72,
                        width: 64,
                        color: Colors.yellow,
                        child: const Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      Container(
                        width: 204,
                        height: 72,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Marcos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'mfs22@aluno.ifal.edu.br',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InkWell(
                        child: const Text(
                          'Notícias',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NoticiasPage(),
                            ),
                          );
                        }),
                    SizedBox(height: 16),
                    InkWell(
                        child: const Text(
                          'Astronáutica',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Menu_Astronautica()),
                          );
                        }),
                    SizedBox(height: 16),
                    InkWell(
                      child: const Text(
                        'Astronomia',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Menu_Astronomia()),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      child: const Text(
                        'Indicações',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onTap: onTap,
                    ),
                    SizedBox(height: 16),
                    const Text(
                      'Quiz',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 16),
                    InkWell(
                      child: const Text(
                        'Questões',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AssuntosQuestoes(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    InkWell(
                      child: const Text(
                        'Novidades',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => NovidadesPage()),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    InkWell(
                      child: const Text(
                        'Extra',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sobre(
                                  sobre: BD.listaSobre,
                                  sobreDesenvolvedores:
                                      BD.listaSobreDesenvolvedores,
                                  sobreRota: BD.listaRota)),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsetsDirectional.only(top: 15),
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/logo_astroapp.png')),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text(
                'Notícias',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              buildListView(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NoticiasPage(),
                    ));
                  },
                  child: Text('VER MAIS'),
                ),
              ),

              //TÓPICOS DA SEMANA

              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'Tópicos da semana',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),

              buildListViewTopicos(),

              //TÓPICOS DA SEMANA II

              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'Tópicos da semana',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  color: Colors.grey,
                  width: 400,
                  height: 270,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 2.0),
                        child: Text(
                          'Planetas',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVrLVOeETJ1JaRoTqErkXH8qFSf-hhykYFQQ&usqp=CAU',
                        width: 375,
                        height: 170,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Planetas(),
                            ));
                          },
                          child: Text('VER MAIS'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Sobre

              Padding(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: Text(
                  'Sobre',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  color: Colors.grey,
                  width: 400,
                  height: 390,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Quem somos',
                          style: TextStyle(
                            fontSize: 29,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'O AstroAPP é um projeto de origem '
                          'escolar voltado para difusão da '
                          'astronomia. Nosso objetivo é '
                          'encantar as pessoas com a beleza do '
                          'cosmos, em tudo que o concerne.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsetsDirectional.only(top: 15),
                          width: 110,
                          height: 110,
                          child: Image.asset('assets/logo_astroapp.png')),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Sobre(
                                  sobre: BD.listaSobre,
                                  sobreDesenvolvedores:
                                      BD.listaSobreDesenvolvedores,
                                  sobreRota: BD.listaRota),
                            ));
                          },
                          child: Text('VER MAIS'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  buildListView() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoticiasI(),
          ),
        );
      },
      child: FutureBuilder<List<Noticias>>(
        future: listaNoticias,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Noticias> listaNoticias = snapshot.data ?? [];

            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listaNoticias.length,
              itemBuilder: (BuildContext context, int index) {
                return CardNoticias(noticias: listaNoticias[index]);
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  buildListViewTopicos() {
    return InkWell(
      onTap: () {},
      child: FutureBuilder<List<Topicos>>(
          future: listaTopicos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Topicos> listaTopicos = snapshot.data ?? [];

              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listaTopicos.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardTopicos(topicos: listaTopicos[index]);
                },
              );
            } else if (snapshot.hasError) {
              child:
              Text(
                'errou, trouxa',
                style: TextStyle(
                  fontSize: 25,
                ),
              );
            } else if (!snapshot.hasData) {
              child:
              Text(
                'Tem nada aqui mano',
                style: TextStyle(
                  fontSize: 25,
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          }),
    );
  }

  void onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const IndicacoesPage();
        },
      ),
    );
  }
}
