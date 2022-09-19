import 'package:flutter/material.dart';

class NovidadesPage extends StatefulWidget {
  const NovidadesPage({Key? key}) : super(key: key);

  @override
  State<NovidadesPage> createState() => _NovidadesPageState();
}

class _NovidadesPageState extends State<NovidadesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: ListView(
        children: [
          Text(
            'Novidades',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'O App agora contém: \n*login atualizado; \n*listas com Future (banco de dados);\n *tela de extra;\n *indicações;',

                ),
                
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 15),
                width: 100,
                height: 100,
                child: Center(
                  child: Image.asset('assets/logo_astroapp.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
