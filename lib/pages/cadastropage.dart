import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text('AstroApp',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 150,
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Nome',
                          border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 16,),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 16,),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Reescreva a senha',
                          border: OutlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: (){},
                        child: const Text(
                          'CADASTRAR',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        )
                    )
                  ]
              ),
            )
          ],
        )
    );

  }
}