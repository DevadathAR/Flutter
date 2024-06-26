import 'package:note_flutter/model/note.dart';
import 'package:sqflite/sqflite.dart';

class NotesDatabase {
  late Database database;
  static const _dbName = "NDB.db";
  static const _version = 1;
  static const tableName = "notes";

  // To initialize the database & create the table
  initDatabase() async {
    database =
        await openDatabase(_dbName, version: _version, onCreate: (Database db, int version) async {
      await db.execute('''CREATE TABLE $tableName (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    title TEXT,
                    content TEXT,
                    noteColor TEXT
                    )''');
    });
  }

  //Display all notes
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    return await database.query(tableName);
  }

  //Insert note
  Future<int> insertNote(Note note) async {
    return await database.insert(tableName, note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //Update a note
  Future<int> updateNote(Note note) async {
    return await database.update(tableName, note.toMap(),
        where: 'id = ?', whereArgs: [note.id], conflictAlgorithm: ConflictAlgorithm.replace);
  }

  //Delete a note
  Future<int> deleteNote(int id) async {
    return await database.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  //Get specific note
  Future<Map<String, dynamic>> getNote(int id) async {
    var result = await database.query(tableName, where: 'id = ?', whereArgs: [id]);

    if (result.isNotEmpty) {
      return result.first;
    }
    return {};
  }

  //Close the database
  closeDatabase() async {
    await database.close();
  }
}
