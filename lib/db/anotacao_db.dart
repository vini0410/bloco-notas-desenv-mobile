import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AnotacaoDB {
  static Database db;

  static Future open() async {
    db = await openDatabase(join(await getDatabasesPath(), 'minhas_notas.db'),
        version: 1, onCreate: (Database db, int version) async {
      db.execute('''
            create table notas(
              id integer primary key autoincrement,
              titulo text not null,
              conteudo text not null,
              data_edicao datetime null,
              status int not null
            );
          ''');
    });
  }

  static Future<List<Map<String, dynamic>>> getAnotacoesList() async {
    if (db == null) {
      await open();
    }
    return await db.query('notas');
  }

  static Future insereAnotacao(Map<String, dynamic> anotacao) async {
    await db.insert('notas', anotacao);
  }

  static Future updateAnotacao(Map<String, dynamic> anotacao) async {
    await db.update('notas', anotacao,
        where: 'id = ?', whereArgs: [anotacao['id']]);
  }

  static Future apagarAnotacao(int id) async {
    await db.delete('notas', where: 'id = ?', whereArgs: [id]);
  }
}
