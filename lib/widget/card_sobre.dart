import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../domain/sobre.dart';

class CardSobre extends StatefulWidget {
  final Sobre sobre;
  const CardSobre({Key? key, required this.sobre}) : super(key: key);

  @override
  State<CardSobre> createState() => _CardSobreState();
}

class _CardSobreState extends State<CardSobre> {

  @override
  Widget build(BuildContext context) {

    return InkWell(
                            child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,  
                            children: [    
                              Image.asset(
                                widget.sobre.img,
                                height: 32,
                                width: 32,
                                ),
                              Text(
                                widget.sobre.desenvolvedores,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 16),
                              ),
                            ]),
                            onTap: () {
                                abrirLink();
                          },
                          );
  }

  Future<void> abrirLink() async {
    Uri _url = Uri.parse(
      widget.sobre.rota,
    );

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
}
