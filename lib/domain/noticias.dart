class Noticias {
  final String imagem;
  final String titulo;
  final String id;

  Noticias({
    required this.imagem,
    required this.titulo,
    required this.id,
  });

  String getId() {
    return id;
  }
}
