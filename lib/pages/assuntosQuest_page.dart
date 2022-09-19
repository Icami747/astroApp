// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_questoes.dart';

class AssuntosQuestoes extends StatefulWidget {
  const AssuntosQuestoes({Key? key}) : super(key: key);

  @override
  State<AssuntosQuestoes> createState() => _AssuntosQuestoesState();
}

class _AssuntosQuestoesState extends State<AssuntosQuestoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: ListView(
          children: [                     
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.on1vmKf6R4jvLcGerIf-ZAHaE7?pid=ImgDet&rs=1',                    
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  SizedBox(height: 8),                                
                  Text(
                    'Planetas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.on1vmKf6R4jvLcGerIf-ZAHaE7?pid=ImgDet&rs=1',                    
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  SizedBox(height: 8),                                
                  Text(
                    'Galáxias',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.on1vmKf6R4jvLcGerIf-ZAHaE7?pid=ImgDet&rs=1',                    
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  SizedBox(height: 8),                                
                  Text(
                    'Estrelas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.on1vmKf6R4jvLcGerIf-ZAHaE7?pid=ImgDet&rs=1',                    
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  SizedBox(height: 8),                                
                  Text(
                    'Constelações',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  SizedBox(height: 12),
                ],
              ),
            )
          ]
            
        ),
      )
    );
  }
  void Questoes(){
    Navigator.push(
      context,
       MaterialPageRoute(
        builder: (context){
          return const HomeQuestoes();
        },
      ),
    );
  }
}