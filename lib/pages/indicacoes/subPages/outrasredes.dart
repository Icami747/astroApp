import 'package:astroapp/data/indicacoes/redes.dart';
import 'package:astroapp/domain/indicacoes/redes_domain.dart';
import 'package:astroapp/widget/indicacoes/subPages/redes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class OutrasRedes extends StatefulWidget {
  const OutrasRedes({Key? key}) : super(key: key);

  @override
  State<OutrasRedes> createState() => _OutrasRedesState();
}

class _OutrasRedesState extends State<OutrasRedes> {

  Future<List<RedesDomain>> lista_redes = RedesData.getRedes();

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AstroAPP'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            Text(
              'Redes Sociais Recomendadas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Apresentamos nas outras seções diversas formas de conteúdo para que você, caro estudante,possa estar imergindo no mundo da astronáutica. Agora, nada mais justo que comparilharmos as redes sociais mais importantes daqueles que recomendamos ao longo do aplicativo. Recomendamos fortemente que os sigam, e acompanhem as novidades em seus canais :)',
            ),
            SizedBox(
              height: 24,
            ),
            redesListView(),
          ],
        ),
        


      ),
    );
  }

  redesListView() {
    return FutureBuilder<List<RedesDomain>>(
      future: lista_redes,
      builder: (context, snapshot){
        
        if(snapshot.hasData){
          List<RedesDomain> lista_redes = snapshot.data ?? [];


          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista_redes.length,
            itemBuilder: (context, index) {
              return CardRedes(
                redes: lista_redes[index],
              );
            }
          );
        }
        
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
