import 'package:bytes_notes_app/data/database/app_database.dart';
import 'package:bytes_notes_app/data/mapper/note/note_mapper.dart';
import 'package:bytes_notes_app/models/note_model.dart';
import 'package:drift/drift.dart';

abstract class NoteRepository {
  Future<int> createNote(NoteModel noteModel);

  Stream<List<NoteModel>> getListNoteModel();
}

class NoteRepositoryImpl extends NoteRepository {
  final AppDatabase appDatabase;
  final NoteMapper noteMapper;

  NoteRepositoryImpl(
    this.appDatabase,
    this.noteMapper,
  );

  @override
  Future<int> createNote(NoteModel noteModel) {
    return appDatabase.into(appDatabase.noteEntity).insert(
          NoteEntityCompanion.insert(
              title: noteModel.title,
              content: noteModel.content,
              color: noteModel.color!,
              isPinned: Value(noteModel.isPinned ?? false)),
        );
  }

  @override
  Stream<List<NoteModel>> getListNoteModel() {
    return appDatabase.notesDao.noteInCategory().map((event) {
      return event.map((e) => noteMapper.mapFromEntity(e)).toList();
    });
  }
}
