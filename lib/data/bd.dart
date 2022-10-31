import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/domain/noticias.dart';
import 'package:astroapp/domain/questoes.dart';
import 'package:astroapp/domain/sobre.dart';
import 'package:astroapp/pages/conteudos_astronautica/introducao_astronautica.dart';
import 'package:astroapp/domain/topicos.dart';

import '../pages/conteudos_astronautica/angulos_de_euler.dart';
import '../pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import '../pages/conteudos_astronomia/constelacoes.dart';
import '../pages/conteudos_astronomia/introducao_astronomia.dart';
import '../pages/conteudos_astronomia/planetas.dart';

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
      imagem: 'assets/not1.jpg',
      titulo: 'Brasil lança novo foguete nacional',
      id: 'NotíciaI()',
    ),
    Noticias(
      imagem: 'assets/not2.jpg',
      titulo:
          'James Webb encontra dióxido de carbono em planeta fora do Sistema Solar',
      id: 'NotíciaII()',
    ),
    Noticias(
      imagem: 'assets/not3.jpg',
      titulo: 'Unesp promoverá cursos sobre astronomia; saiba como participar',
      id: 'NotíciaIII()',
    )
  ];

  static List<Topicos> listaTopicos = [
    Topicos(
        titulo: 'Planetas', imagem: 'assets/top1.jpg', conteudo: 'Planetas()'),
    Topicos(
        titulo: 'Constelações',
        imagem: 'assets/top2.jpg',
        conteudo: 'Constelacoes()')
  ];

  static List<Sobre> listaSobre = [
    Sobre(
      img: 'assets/ig.png',
      desenvolvedores: '@daniel_dbs7',
      rota: 'https://www.instagram.com/daniel_dbs7/',
    ),
    Sobre(
      img: 'assets/ig.png',
      desenvolvedores: '@icamicosta',
      rota: 'https://www.instagram.com/icamicosta/',
    ),
    Sobre(
      img: 'assets/ig.png',
      desenvolvedores: '@marcosfelypesilva',
      rota: 'https://www.instagram.com/marcosfelypesilva/',
    ),
    Sobre(
      img: 'assets/ig.png',
      desenvolvedores: '@richardo_ahl.sill',
      rota: 'https://www.instagram.com/richardo_ahl.sill/',
    ),
    Sobre(
      img: 'assets/ig.png',
      desenvolvedores: '@v_magalhaees',
      rota: 'https://www.instagram.com/v_magalhaees/',
    ),
    Sobre(
      img: 'assets/wts.png',
      desenvolvedores: 'Daniel Berg',
      rota: 'https://api.whatsapp.com/send?phone=5582996591380',
    ),
    Sobre(
      img: 'assets/wts.png',
      desenvolvedores: 'Içami Costa',
      rota: 'https://api.whatsapp.com/send?phone=5582996136105',
    ),
    Sobre(
      img: 'assets/wts.png',
      desenvolvedores: 'Marcos Felype',
      rota: 'https://api.whatsapp.com/send?phone=5582981930891',
    ),
    Sobre(
      img: 'assets/wts.png',
      desenvolvedores: 'Ricardo Alexandre',
      rota: 'https://api.whatsapp.com/send?phone=5582999277242',
    ),
    Sobre(
      img: 'assets/wts.png',
      desenvolvedores: 'Vítor Magalhães',
      rota: 'https://api.whatsapp.com/send?phone=5582981708764',
    ),
  ];

  static List<Menu_astro> listaMenu = [
    Menu_astro(
      titulo: "INTRODUÇÃO À ASTRONÁUTICA",
      img: 'assets/int_astronautica.jpg',
      rota: Introducao_Astronautica(),
    ),
    Menu_astro(
      titulo: "ÂNGULOS DE EULER",
      img: 'assets/ang_euler.png',
      rota: Angulos_De_Euler(),
    ),
    Menu_astro(
      titulo: "APLICAÇÕES DA ASTRONÁUTICA",
      img: 'assets/apl_astronautica.jpg',
      rota: Aplicacoes_Da_Astronautica(),
    ),
    Menu_astro(
      titulo: "INTRODUÇÃO À ASTRONOMIA",
      img: 'assets/int_astronomia.jpg',
      rota: Introducao_Astronomia(),
    ),
    Menu_astro(
      titulo: "PLANETAS",
      img: 'assets/planetas.jpg',
      rota: Planetas(),
    ),
    Menu_astro(
      titulo: "CONSTELAÇÕES",
      img: 'assets/const.jpg',
      rota: Constelacoes(),
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

  static Future<List<Sobre>> getCardSobre() async {
    await Future.delayed(const Duration(seconds: 5));
    return listaSobre;
  }

  static Future<List<Menu_astro>> getCardMenuAstro() async {
    await Future.delayed(const Duration(seconds: 5));
    return listaMenu;
  }
}
