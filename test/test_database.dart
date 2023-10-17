import 'package:bytes_notes_app/data/database/app_database.dart';
import 'package:bytes_notes_app/data/database/entity/note_entity.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      MaterialApp(
        home: Scaffold(
            body: Container()
        ),
      )
  );
  final database = AppDatabase();


  List<NoteEntityData> allItems =
      await database.select(database.noteEntity).get();

  print('items in database: $allItems');
}
