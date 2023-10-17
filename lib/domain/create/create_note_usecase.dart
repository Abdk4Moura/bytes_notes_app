import 'package:bytes_notes_app/data/repository/note_repository.dart';
import 'package:bytes_notes_app/domain/use_case.dart';
import 'package:bytes_notes_app/models/note_model.dart';

class CreateNoteUseCase extends UseCase<NoteModel, int> {
  final NoteRepository noteRepository;

  CreateNoteUseCase(this.noteRepository);

  @override
  Future<int> execute(NoteModel input) async {
    return await noteRepository.createNote(input);
  }
}
