import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/widget/card_menu.dart';
import 'package:flutter/material.dart';

import '../data/bd.dart';


class Menu_Astronautica extends StatefulWidget {
  const Menu_Astronautica({Key? key}) : super(key: key);

  @override
  Menu_AstronauticaState createState() => Menu_AstronauticaState();
}

class Menu_AstronauticaState extends State<Menu_Astronautica> {
Future<List<Menu_astro>> listaMenu = BD.getCardMenuAstro();

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
                          "Astronáutica",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                        ),

                        MenuListView(),

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

  MenuListView() {
    return FutureBuilder<List<Menu_astro>>(
      future: listaMenu,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Menu_astro> listaMenu = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listaMenu.length~/2,
            itemBuilder: (context, index) {
              return CardMenu(
                menu_astro: listaMenu[index],
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }

}
