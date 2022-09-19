import 'package:astroapp/data/indicacoes/subPagesData/livros.dart';
import 'package:astroapp/domain/indicacoes/principal_domain.dart';
import 'package:astroapp/domain/indicacoes/subPagesDomain/livros.dart';
import 'package:astroapp/pages/indicacoes/subPages/livros.dart';
import 'package:astroapp/pages/indicacoes/subPages/outrasredes.dart';
import 'package:astroapp/pages/indicacoes/subPages/sites.dart';
import 'package:astroapp/pages/indicacoes/subPages/youtube.dart';
import 'package:astroapp/widget/indicacoes/subPages/livros.dart';
import 'package:astroapp/widget/indicacoes/subPages/sites.dart';
import 'package:astroapp/widget/indicacoes/subPages/youtube.dart';
import 'package:flutter/material.dart';

class IndicacoesCard extends StatefulWidget {
  final PrincipalDomain principal_domain;
  const IndicacoesCard({Key? key, required this.principal_domain})
      : super(key: key);

  @override
  State<IndicacoesCard> createState() => _IndicacoesCardState();
}

class _IndicacoesCardState extends State<IndicacoesCard> {
  Future<List<LivrosDomain>> lista_livros = LivrosData.getLivros();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
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
                widget.principal_domain.titulocard,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Image.network(
                widget.principal_domain.imagem,
                width: 200,
                height: 100,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        onTap: onTap);
  }

  void onTap() {
    if (widget.principal_domain.titulocard == 'Canais do YouTube') {
      youtubeBuilder();
    } else if (widget.principal_domain.titulocard == 'Sites') {
      sitesBuilder();
    } else if (widget.principal_domain.titulocard ==
        'Livros e materiais diversos') {
      livrosBuilder();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutrasRedes(),
        ),
      );
    }
  }

  livrosBuilder() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Livros(),
      ),
    );
  }

  youtubeBuilder() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const YouTube(),
      ),
    );
  }

  sitesBuilder() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Sites(),
      ),
    );
  }
}
