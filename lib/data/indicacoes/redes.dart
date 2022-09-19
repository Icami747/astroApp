import 'package:astroapp/domain/indicacoes/redes_domain.dart';

class RedesData {
  static List<RedesDomain> lista_redes = [
    RedesDomain(
      nome: 'Virgílio', 
      imagem: 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 
      texto: 'Sim, ele mesmo. O dono do canal ABF! :)', 
      link_insta: 'https://www.instagram.com/abf_astrobiofisica/', 
      link_tel: 'https://t.me/s/astronomia_abf',
    ),

    RedesDomain(
      nome: 'Virgílio', 
      imagem: 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 
      texto: 'Sim, ele mesmo. O dono do canal ABF! :)', 
      link_insta: 'https://www.instagram.com/abf_astrobiofisica/', 
      link_tel: 'https://t.me/s/astronomia_abf',
    ),

    RedesDomain(
      nome: 'Virgílio', 
      imagem: 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 
      texto: 'Sim, ele mesmo. O dono do canal ABF! :)', 
      link_insta: 'https://www.instagram.com/abf_astrobiofisica/', 
      link_tel: 'https://t.me/s/astronomia_abf',
    ),
  ];

  static Future<List<RedesDomain>> getRedes() async{
    await Future.delayed(Duration(seconds: 10));
    return lista_redes;
  }
}
