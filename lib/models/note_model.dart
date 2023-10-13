// import 'dart:ui';
//
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'note_model.freezed.dart';
//
// part 'note_model.g.dart';
//
// @freezed
// class NoteModel with _$NoteModel {
//   const factory NoteModel(
//       {required String text,
//       required String title,
//       required String description,
//       required String? createdTime,
//       required bool? isDoneTask,
//       required String? label,
//       required BigInt? color,
//       required bool isPinned}) = _NoteModel;
//
//   // const NoteModel.fromNoteTextAndTitle(String text, String title) :
//   //     .text = text, title: title, description: '', createdTime: DateTime.timestamp(), );
//
//   factory NoteModel.fromJson(Map<String, Object?> json) =>
//       _$NoteModelFromJson(json);
// }

class NoteModel {
  final String text;
  final String title;
  final String? description;
  final DateTime? createdTime;
  final bool? isDoneTask;
  final String? label;
  final BigInt? color;
  final bool isPinned;

  const NoteModel(
      {required this.text,
      required this.title,
      required this.description,
      required this.createdTime,
      required this.isDoneTask,
      required this.label,
      required this.color,
      required this.isPinned});

  NoteModel copyWith(
      {final String? text,
      final String? title,
      final String? description,
      final DateTime? createdTime,
      final bool? isDoneTask,
      final String? label,
      final BigInt? color,
      final bool? isPinned}) {
    return NoteModel(
      text: text ?? this.text,
      title: title ?? this.title,
      description: description ?? this.description,
      createdTime: createdTime ?? this.createdTime,
      isDoneTask: isDoneTask ?? this.isDoneTask,
      label: label ?? this.label,
      color: color ?? this.color,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'text': text});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'createdTime': createdTime});
    result.addAll({'isDoneTask': isDoneTask});
    result.addAll({'label': label});
    result.addAll({'color': color});
    result.addAll({'isPinned': isPinned});

    return result;
  }

  factory NoteModel.fromJson(Map<String, dynamic> map) = NoteModel.fromMap;

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      text: map['text'],
      title: map['title'],
      description: map['description'] ?? '',
      createdTime: map['createdTime'] ?? DateTime.timestamp(),
      isDoneTask: map['isDoneTask'] ?? false,
      label: map['label'] ?? '',
      color: map['color'],
      isPinned: map['isPinned'] ?? false,
    );
  }

  @override
  String toString() {
    return 'NoteModel(text: $text, title: $title, description: $description, createdTime: $createdTime, isDoneTask: $isDoneTask, label: $label, color: $color, isPinned: $isPinned)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NoteModel &&
        other.text == text &&
        other.description == description &&
        other.createdTime == createdTime &&
        other.isDoneTask == isDoneTask &&
        other.label == label &&
        other.color == color &&
        other.isPinned == isPinned;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        description.hashCode ^
        createdTime.hashCode ^
        isDoneTask.hashCode ^
        label.hashCode ^
        color.hashCode ^
        isPinned.hashCode;
  }
}
