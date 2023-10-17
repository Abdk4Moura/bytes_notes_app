import 'package:bytes_notes_app/data/database/app_database.dart';
import 'package:bytes_notes_app/data/database/entity/note_entity.dart';
import 'package:drift/drift.dart';

part 'note_dao.g.dart';

@DriftAccessor(tables: [NoteEntity])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {
  NotesDao(AppDatabase db) : super(db);

  Stream<List<NoteEntityData>> noteInCategory() {
    return select(noteEntity).watch();
  }
}
