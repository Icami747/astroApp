import 'package:astroapp/data/db_helper.dart';
import 'package:astroapp/domain/noticias.dart';
import 'package:sqflite/sqflite.dart';

class NoticiasDao {
  Future<List<Noticias>> getCardNoticias() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlnoticias = "SELECT * FROM NOTICIAS;";
    final result = await db.rawQuery(sqlnoticias);

    List<Noticias> listaNoticias = <Noticias>[];
    for (var json in result) {
      Noticias noticias = Noticias.fromJson(json);
      listaNoticias.add(noticias);
    }

    return listaNoticias;
  }
}
