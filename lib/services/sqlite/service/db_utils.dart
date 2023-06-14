import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../model/m_yemek.dart';

class DbUtils {

  static final DbUtils _dbUtils = DbUtils._internal();

  DbUtils._internal();

  factory DbUtils() {
    return _dbUtils;
  }

  static Database? _db;

  Future<Database?> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    String path = join(await getDatabasesPath(), 'yemekgie_database.db');
    var dbYemeks = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbYemeks;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE yemeks(id INTEGER PRIMARY KEY, name TEXT)");
  }

  Future<void> deleteTable() async {
    final Database? db = await this.db;
    db?.delete('yemeks');
  }

  Future<void> insertyemek(yemek yemek) async {
    final Database? db = await this.db;
    await db?.insert(
      'yemeks',
      yemek.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<yemek>> yemeks() async {
    final Database? db = await this.db;
    final List<Map<String, Object?>>? maps = await db?.query('yemeks');

    return List.generate(maps!.length, (i) {
      return yemek(
        id: int.parse(maps[i]['id'].toString()),
        name: maps[i]['name'].toString(),
      );
    });
  }

  Future<void> updateyemek(yemek yemek) async {
    final db = await this.db;
    await db?.update(
      'yemeks',
      yemek.toMap(),
      where: "id = ?",
      whereArgs: [yemek.id],
    );
  }

  Future<void> deleteyemek(int id) async {
    final db = await this.db;
    await db?.delete(
      'yemeks',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}