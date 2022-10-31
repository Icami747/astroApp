import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('astronauta@gmail.com', '40028922')";
    await db.execute(sql);

    String sqlnoticias =
        "CREATE TABLE NOTICIAS (imagem varchar(100), titulo varchar(100) PRIMARY KEY, id varchar(100))";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Brasil lança novo foguete nacional', 'NoticiaI()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not2.jpg', 'SQL funcioou galeraa!!!', 'NoticiaII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not3.jpg', 'Scott e Chichi promoverão cursos sobre astronomia; saiba como participar', 'NoticiaIII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Professor de astronomia de Bauru explica como observar pico de chuva de meteoros visível na região', 'NoticiaIV()')";
    await db.execute(sqlnoticias);
  }
}
