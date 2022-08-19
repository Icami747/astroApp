import 'package:astroapp/pages/astronautica.dart';
import 'package:astroapp/pages/home_questoes.dart';
import 'package:astroapp/pages/noticiasPage.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../domain/noticias.dart';
import '../widget/lista_noticias_card.dart';
import 'package:astroapp/data/bd.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Noticias>> listaNoticias = BD.getCardNoticias();

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
                    const Text(
                      'Notícias',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
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
                                builder: (context) => Astronautica()),
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
                              builder: (context) => Astronautica()),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    const Text(
                      'Indicações',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
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
                            builder: (context) => const HomeQuestoes(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    const Text(
                      'Novidades',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 16),
                    const Text(
                      'Extra',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
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
                  fontSize: 40,
                ),
              ),
              buildListView(),
            ],
          ),
        ));
  }

  buildListView() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NoticiasPage(),
        ));
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
}
