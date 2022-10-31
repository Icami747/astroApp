import 'package:astroapp/domain/menu_astro.dart';
import 'package:flutter/material.dart';

class CardMenu extends StatefulWidget {
  final Menu_astro menu_astro;

  const CardMenu({Key? key, required this.menu_astro})
      : super(key: key);

  @override
  State<CardMenu> createState() => _CardMenu();
}

class _CardMenu extends State<CardMenu> {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 75.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 7,
        ),
      ),
      child: InkWell(
        child: Column(
          children: [
            Text(
              widget.menu_astro.titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.yellow,
              ),
            ),
            Image.asset(
              widget.menu_astro.img,
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.menu_astro.rota),
          );
        },
      ),
    );
  }
}
