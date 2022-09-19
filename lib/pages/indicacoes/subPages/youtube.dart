import 'package:astroapp/data/indicacoes/subPagesData/youtube.dart';
import 'package:astroapp/domain/indicacoes/subPagesDomain/youtube.dart';
import 'package:astroapp/widget/indicacoes/subPages/youtube.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YouTube extends StatefulWidget {
  const YouTube({Key? key}) : super(key: key);

  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {

  Future<List<YoutubeDomain>> lista_youtube = YoutubeData.getYoutube();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: ListView(
          children: [
            Text(
              'Canais do YouTube',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 24,),
            youtubeListView(),
          ],
        ),
      ),
    );
  }

  youtubeListView() {
    return FutureBuilder<List<YoutubeDomain>>(
      future: lista_youtube,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<YoutubeDomain> lista_youtube = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista_youtube.length,
            itemBuilder: (context, index) {
              return CardYoutube(youtube_domain: lista_youtube[index]);
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
