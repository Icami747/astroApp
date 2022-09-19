import 'package:astroapp/domain/indicacoes/subPagesDomain/sites.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardSites extends StatefulWidget {
  final SitesDomain sites_domain;
  const CardSites({Key? key, required this.sites_domain}) : super(key: key);

  @override
  State<CardSites> createState() => _CardSiteState();
}

Future<void> abrirSite() async {
  final Uri _url = Uri.parse('http://www.oba.org.br/site/');

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $_url';
  }
}

class _CardSiteState extends State<CardSites> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                widget.sites_domain.titulocard,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Image.network(
                widget.sites_domain.imagem,
                width: 200,
                height: 100,
              ),
              SizedBox(height: 16),
              Text(widget.sites_domain.texto),
              
              ElevatedButton(
                onPressed: () => abrirSite(),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Abrir site',
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
