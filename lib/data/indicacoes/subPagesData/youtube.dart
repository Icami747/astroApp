import 'package:astroapp/domain/indicacoes/subPagesDomain/youtube.dart';

class YoutubeData {
  static List<YoutubeDomain> lista_yt = [
    YoutubeDomain(
      titulocard: 'ABF - AstrobioFísica',
      imagem:
          'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
      texto:
          'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
      textbotao: 'Visite o canal',
      link: 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica',
    ),
    YoutubeDomain(
      titulocard: 'ABF - AstrobioFísica',
      imagem:
          'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
      texto:
          'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
      textbotao: 'Visite o canal',
      link: 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica',
    ),
    YoutubeDomain(
      titulocard: 'ABF - AstrobioFísica',
      imagem:
          'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
      texto:
          'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
      textbotao: 'Visite o canal',
      link: 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica',
    ),
  ];

  static Future<List<YoutubeDomain>> getYoutube() async {
    await Future.delayed(const Duration(seconds: 10));
    return lista_yt;
  }
}
