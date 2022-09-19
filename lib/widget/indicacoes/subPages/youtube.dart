import 'package:astroapp/domain/indicacoes/subPagesDomain/youtube.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardYoutube extends StatefulWidget {
  final YoutubeDomain youtube_domain;
  const CardYoutube({Key? key, required this.youtube_domain}) : super(key: key);

  @override
  State<CardYoutube> createState() => _CardYoutubeState();
}

Future<void> abrirCanal() async {
    final Uri _url =
        Uri.parse('https://www.youtube.com/c/ABFAstroBioF%C3%ADsica');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

class _CardYoutubeState extends State<CardYoutube> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          margin: EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(16),
          ),

          child: Column(
            children: [
              Text(
                widget.youtube_domain.titulocard,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Image.network(
                widget.youtube_domain.imagem,
                width: 200,
                height: 100,
              ),
              SizedBox(height: 16),
              Text(widget.youtube_domain.texto),
              
              ElevatedButton(
                onPressed: () => abrirCanal(),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Ver Canal',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
