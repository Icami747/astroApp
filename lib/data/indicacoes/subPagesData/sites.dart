import 'package:astroapp/domain/indicacoes/subPagesDomain/sites.dart';

class SitesData {
  static List<SitesDomain> lista_sites = [
    SitesDomain(
      titulocard: 'Site da OBA',
      imagem:
          'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
      texto:
          'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
      textbotao: 'Visite o site',
      link: 'http://www.oba.org.br/site/',
    ),
    SitesDomain(
      titulocard: 'Site da OBA',
      imagem:
          'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
      texto:
          'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
      textbotao: 'Visite o site',
      link: 'http://www.oba.org.br/site/',
    ),
    SitesDomain(
      titulocard: 'Site da OBA',
      imagem:
          'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
      texto:
          'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
      textbotao: 'Visite o site',
      link: 'http://www.oba.org.br/site/',
    ),
  ];

  static Future<List<SitesDomain>> getSites() async {
    await Future.delayed(Duration(seconds: 10));
    return lista_sites;
  }
}
