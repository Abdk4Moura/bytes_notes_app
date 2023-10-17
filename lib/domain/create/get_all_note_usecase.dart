import 'package:bytes_notes_app/data/repository/note_repository.dart';
import 'package:bytes_notes_app/domain/stream_use_case.dart';
import 'package:bytes_notes_app/models/note_model.dart';
import 'package:tuple/tuple.dart';

class GetAllNoteUseCase
    extends StreamUseCase<Object?, Tuple2<List<NoteModel>, List<NoteModel>>> {
  final NoteRepository noteRepository;

  GetAllNoteUseCase(this.noteRepository);

  @override
  Stream<Tuple2<List<NoteModel>, List<NoteModel>>> execute([Object? input]) {
    return noteRepository.getListNoteModel().map((event) {
      var listPinned =
          event.where((element) => element.isPinned == true).toList();
      var listInterest = event;
      return Tuple2(listPinned, listInterest);
    });
  }
}
