import 'package:drift/drift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

// part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel(
      {required String title,
      required String text,
      required DateTime? createdTime,
      // required bool? isDoneTask,
      // required List<String>? tags,
      required BigInt? color,
      required bool isPinned}) = _NoteModel;

  factory NoteModel.fromJson(Map<String, Object?> json) =>
      _$NoteModelFromJson(json);

  // static TypeConverter<NoteModel, String> converter = TypeConverter.json(
  //     fromJson: (json) => NoteModel.fromJson(json as Map<String, Object?>),
  //     toJson: (note) => note.toJson());
}
