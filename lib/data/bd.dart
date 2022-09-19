import 'package:astroapp/domain/noticias.dart';
import 'package:astroapp/domain/questoes.dart';
import 'package:astroapp/domain/sobre_des.dart';
import 'package:astroapp/domain/sobre_img.dart';
import 'package:astroapp/domain/sobre_rota.dart';
import 'package:astroapp/domain/topicos.dart';

class BD {
  static List<Questoes> lista = [
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
    Questoes(
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg',
      titulo:
          'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: '
          'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.',
      alternativa1: 'a) 4',
      alternativa2: 'b) 0',
      alternativa3: 'c) 1',
      alternativa4: 'd) 2',
      alternativa5: 'e) 3',
    ),
  ];

  static List<Noticias> listaNoticias = [
    Noticias(
      imagem:
          'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/06/78612212_2846136555417292_2868582208589791232_n.jpg?w=876&h=484&crop=1',
      titulo: 'Brasil será sede de lançamento de foguete sul-coreano',
      id: 'NotíciaI()',
    ),
    Noticias(
      imagem:
          'https://media-manager.noticiasaominuto.com.br/1920/naom_630c8a20248e4.jpg',
      titulo:
          'James Webb encontra dióxido de carbono em planeta fora do Sistema Solar',
      id: 'NotíciaII()',
    ),
    Noticias(
      imagem:
          'https://t.ctcdn.com.br/oQALVyFDz75lqmVeenWQPD2Y0Oo=/1024x0/smart/filters:format(webp)/i550320.jpeg',
      titulo: 'Unesp promoverá cursos sobre astronomia; saiba como participar',
      id: 'NotíciaIII()',
    )
  ];

  static List<Topicos> listaTopicos = [
    Topicos(
        titulo: 'Planetas',
        imagem:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVrLVOeETJ1JaRoTqErkXH8qFSf-hhykYFQQ&usqp=CAU',
        conteudo: 'Planetas()'),
    Topicos(
        titulo: 'Constelações',
        imagem:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVrLVOeETJ1JaRoTqErkXH8qFSf-hhykYFQQ&usqp=CAU',
        conteudo: 'Constelacoes()')
  ];

  static List<Sobre_img> listaSobre = [
    Sobre_img(
      img: 'assets/ig.png',
    ),
    Sobre_img(
      img: 'assets/wts.png',
    ),
  ];

  static List<Sobre_des> listaSobreDesenvolvedores = [
    Sobre_des(
      desenvolvedores: '@daniel_dbs7',
    ),
    Sobre_des(
      desenvolvedores: '@icamicosta',
    ),
    Sobre_des(
      desenvolvedores: '@marcosfelypesilva',
    ),
    Sobre_des(
      desenvolvedores: '@richardo_ahl.sill',
    ),
    Sobre_des(
      desenvolvedores: '@v_magalhaees',
    ),
    Sobre_des(
      desenvolvedores: 'Daniel Berg',
    ),
    Sobre_des(
      desenvolvedores: 'Içami Costa',
    ),
    Sobre_des(
      desenvolvedores: 'Marcos Felype',
    ),
    Sobre_des(
      desenvolvedores: 'Ricardo Alexandre',
    ),
    Sobre_des(
      desenvolvedores: 'Vítor Magalhães',
    ),
  ];

  static List<Sobre_rota> listaRota = [
    Sobre_rota(
      rota: 'https://www.instagram.com/daniel_dbs7/',
    ),
    Sobre_rota(
      rota: 'https://www.instagram.com/icamicosta/',
    ),
    Sobre_rota(
      rota: 'https://www.instagram.com/marcosfelypesilva/',
    ),
    Sobre_rota(
      rota: 'https://www.instagram.com/richardo_ahl.sill/',
    ),
    Sobre_rota(
      rota: 'https://www.instagram.com/v_magalhaees/',
    ),
    Sobre_rota(
      rota: 'https://api.whatsapp.com/send?phone=5582996591380',
    ),
    Sobre_rota(
      rota: 'https://api.whatsapp.com/send?phone=5582996136105',
    ),
    Sobre_rota(
      rota: 'https://api.whatsapp.com/send?phone=5582981930891',
    ),
    Sobre_rota(
      rota: 'https://api.whatsapp.com/send?phone=5582999277242',
    ),
    Sobre_rota(
      rota: 'https://api.whatsapp.com/send?phone=5582981708764',
    ),
  ];

  static Future<List<Questoes>> getCardQuestoes() async {
    await Future.delayed(const Duration(seconds: 10));
    return lista;
  }

  static Future<List<Noticias>> getCardNoticias() async {
    await Future.delayed(const Duration(seconds: 10));
    return listaNoticias;
  }

  static Future<List<Topicos>> getCardTopicos() async {
    await Future.delayed(const Duration(seconds: 10));
    return listaTopicos;
  }
}
