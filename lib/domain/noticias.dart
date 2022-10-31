class Noticias {
  late final String imagem;
  late final String titulo;
  late final String id;

  Noticias({
    required this.imagem,
    required this.titulo,
    required this.id,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['imagem'] = imagem;
    data['titulo'] = titulo;
    data['id'] = id;

    return data;
  }

  Noticias.fromJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    id = json['id'];
  }

  String getId() {
    return id;
  }
}
