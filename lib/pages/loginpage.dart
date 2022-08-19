import 'package:astroapp/pages/cadastropage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          labelText: 'Email',
                          border: OutlineInputBorder(

                          )
                      ),
                    ),
                    const SizedBox(height: 16,),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(


                          )
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        )
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(
                        onPressed: TelaCadastro,
                        child: const Text(
                          'CADASTRE-SE',
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
  void TelaCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const CadastroPage();
        },
      ),
    );
  }
}
