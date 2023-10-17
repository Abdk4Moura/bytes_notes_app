import 'package:bytes_notes_app/apis/data_api.dart';
import 'package:bytes_notes_app/domain/create/create_note_usecase.dart';
import 'package:bytes_notes_app/domain/create/get_all_note_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createNoteUseCaseProvider = Provider((ref) {
  var noteRepository = ref.read(createNoteRepoProvider);
  return CreateNoteUseCase(noteRepository);
});

final getAllNoteUseCaseProvider = Provider((ref) {
  var noteRepository = ref.read(createNoteRepoProvider);
  var streamUseCase = GetAllNoteUseCase(noteRepository);
  return streamUseCase;
} );