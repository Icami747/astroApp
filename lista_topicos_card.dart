import 'package:flutter/material.dart';
import '../domain/topicos.dart';
import '../pages/conteudos_astronomia/planetas.dart';

class CardTopicos extends StatefulWidget {
  final Topicos topicos;

  const CardTopicos({
    Key? key,
    required this.topicos,
  }) : super(key: key);

  @override
  _CardTopicosState createState() => _CardTopicosState();
}

class _CardTopicosState extends State<CardTopicos> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.topicos.titulo,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildImage(),
                  ]
              ),
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
    );
  }
  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.topicos.imagem),
        ),
      ],
    );
  }
}