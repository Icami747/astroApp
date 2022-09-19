// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import
import 'package:astroapp/data/indicacoes/subPagesData/sites.dart';
import 'package:astroapp/domain/indicacoes/subPagesDomain/sites.dart';
import 'package:astroapp/widget/indicacoes/subPages/sites.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';

class Sites extends StatefulWidget {
  const Sites({Key? key}) : super(key: key);

  @override
  State<Sites> createState() => _SitesState();
}

class _SitesState extends State<Sites> {
/*Future<void> _launchLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
    print('Não pode acessar o link $url');
  }
}*/

  Future<List<SitesDomain>> lista_sites = SitesData.getSites();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            Text(
              'Sites',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            sitesListView(),
          ],
        ),
      ),
    );
  }

  sitesListView() {
    return FutureBuilder<List<SitesDomain>>(
      future: lista_sites,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<SitesDomain> lista_sites = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista_sites.length,
            itemBuilder: (context, index) {
              return CardSites(
                sites_domain: lista_sites[index],
              );
            },
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
