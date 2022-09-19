import 'package:astroapp/domain/indicacoes/redes_domain.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardRedes extends StatefulWidget {
  final RedesDomain redes;
  const CardRedes({ Key? key, required this.redes }) : super(key: key);

  @override
  State<CardRedes> createState() => _CardRedesState();
}



class _CardRedesState extends State<CardRedes> {
  @override
  Future<void> chamarInsta() async{
  final Uri _url = Uri.parse(widget.redes.link_insta);

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
    )){
      throw 'Could not launch $_url';
    }
  }

  Future<void> chamarTelegram() async{
  final Uri _url = Uri.parse(widget.redes.link_tel);

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
    )){
      throw 'Could not launch $_url';
    }
  }
  Widget build(BuildContext context) {
    return Container(
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
            widget.redes.nome,
            style: TextStyle(
            fontSize: 24,
          ),
          ),
          Image.network(
            widget.redes.imagem,
            width: 200,
            height: 100,
          ),
          Text(widget.redes.texto),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Image.network(
                  'https://cdn.iconscout.com/icon/free/png-256/instagram-216-721958.png',
                  width: 24,
                  height: 24,
                ),
                onTap: chamarInsta,
              ),
              InkWell(
                child: Image.network(
                  'https://freesvg.org/img/logo-telegram.png',
                  width: 24,
                  height: 24,
                ),
                onTap: chamarTelegram,
              ),
            ],
          )
        ],
      ),
    );
  }
}
