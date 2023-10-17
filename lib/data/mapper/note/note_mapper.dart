import 'package:bytes_notes_app/data/database/app_database.dart';
import 'package:bytes_notes_app/models/note_model.dart';

import '../base_mapper.dart';

class NoteMapper extends Mapper<NoteEntityData, NoteModel> {
  @override
  NoteEntityData mapFromDomain(NoteModel domain) {
    // TODO: implement mapFromDomain
    throw UnimplementedError();
  }

  @override
  NoteModel mapFromEntity(NoteEntityData entity) {
    return NoteModel(
        id: entity.id.toString(),
        content: entity.content,
        title: entity.title,
        timeCreated: entity.timeCreated,
        color: entity.color,
        isPinned: entity.isPinned);
  }
}
