

import 'package:astroapp/domain/indicacoes/subPagesDomain/livros.dart';

class LivrosData {
  static List<LivrosDomain> lista_livros = [
    LivrosDomain(
      titulocard: 'Guia para seletivas online', 
      imagem: 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 
      texto: 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 
      textbotao: 'Veja o livro',
      link: 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf',
    ),

    LivrosDomain(
      titulocard: 'Guia para seletivas online', 
      imagem: 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 
      texto: 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 
      textbotao: 'Veja o livro',
      link: 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf',
    ),

    LivrosDomain(
      titulocard: 'Guia para seletivas online', 
      imagem: 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 
      texto: 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 
      textbotao: 'Veja o livro',
      link: 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf',
    ),
  ];

  static Future<List<LivrosDomain>> getLivros() async{
    await Future.delayed(const Duration(seconds: 10)); 
    return lista_livros;
  }
}
