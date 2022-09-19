import 'package:astroapp/domain/indicacoes/principal_domain.dart';

class PrincipalData {
  static List<PrincipalDomain> lista_principal = [
    PrincipalDomain(
      titulocard: 'Canais do YouTube',
      imagem:
          'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
    ),
    PrincipalDomain(
      titulocard: 'Sites',
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/5/5f/Website.png',
    ),
    PrincipalDomain(
      titulocard: 'Livros e materiais diversos',
      imagem:
          'https://publicdomainvectors.org/photos/StackOfBooks.png',
    ),
    PrincipalDomain(
      titulocard: 'Outras Redes',
      imagem:
          'https://c.pxhere.com/images/48/55/ea3e6a6c6dc4c0aad03ba603702e-1564111.jpg!d',
    ),
    
  ];

  static Future<List<PrincipalDomain>> getListaIndicacoes() async{
    await Future.delayed(const Duration(seconds: 10));
    return lista_principal;
  }
}
