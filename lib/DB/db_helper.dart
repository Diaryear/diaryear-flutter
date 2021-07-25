import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'diary_model.dart';

class DBHelper {
  static final DBHelper instance = DBHelper._init();
  factory DBHelper() => instance;
  static Database? _database;

  DBHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Diary(
            id INTEGER PRIMARY KEY,
            title TEXT not null,
            contents BLOB not null,
            yyyy INTEGER not null,
            mm INTEGER not null,
            dd INTEGER not null,
            day TEXT not null,
            createdAt TEXT not null,
            updatedAt TEXT not null
          )
        ''');
      },
    );
  }

  Future<int> createDiary(Diary diary) async {
    final database = await instance.database;
    return await database.insert('Diary', diary.toMap());
  }

  Future<Diary?> getDiary(int id) async {
    final database = await instance.database;

    List<Map<String, dynamic>> maps =
        await database.query('Diary', where: 'id = ?', whereArgs: [id]);

    print(maps);
    if (maps.isNotEmpty) {
      return Diary.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    final database = await instance.database;

    // Returns the number of rows affected.
    return await database.delete('Diary', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(Diary diary) async {
    final database = await instance.database;

    return await database
        .update('Diary', diary.toMap(), where: 'id = ?', whereArgs: [diary.id]);
  }

  Future close() async {
    final database = await instance.database;
    database.close();
  }
}
