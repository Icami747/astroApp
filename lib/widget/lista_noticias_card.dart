import 'package:flutter/material.dart';
import '../domain/noticias.dart';

class CardNoticias extends StatefulWidget {
  final Noticias noticias;

  const CardNoticias({
    Key? key,
    required this.noticias,
  }) : super(key: key);

  @override
  _CardNoticiasState createState() => _CardNoticiasState();
}

class _CardNoticiasState extends State<CardNoticias> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.noticias.titulo,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.noticias.imagem),
        ),
      ],
    );
  }
}