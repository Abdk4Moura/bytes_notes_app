import 'package:bytes_notes_app/models/note_model.dart';
import 'package:flutter/material.dart';

class NoteSamples {
  static final note1 = NoteModel(
      title: "To-do list",
      content: "1. Reply to emails\n"
          "2. Prepare presentation slides or the marketing meeting\n"
          "3. Conduct research on competitor products\n"
          "...",
      isPinned: true,
      color: BigInt.from(Colors.blue.value),
      timeCreated: DateTime.utc(2023, DateTime.october));

  static final note2 = NoteModel(
      title: "Homework",
      content: "1. Read chapters 5 for Psychology class.\n"
          "2. Write a 2-page reflection on the assigned literature reading for English class",
      isPinned: true,
      color: BigInt.from(Colors.pink.shade300.value),
      timeCreated: DateTime.utc(2023, DateTime.october, 5));

  static final note3 = NoteModel(
      title: "In the late evening, "
          "and after tonight",
      content: "...................",
      color: BigInt.from(Colors.yellow.value),
      timeCreated: DateTime.utc(2023, DateTime.october, 2));

  static final note4 = NoteModel(
      title: "Homework",
      content: "1. Read chapters 5 for Psychology class.\n"
          "2. Write a 2-page reflection on the assigned literature reading for English class",
      color: BigInt.from(Colors.green.shade300.value),
      timeCreated: DateTime.utc(2023, DateTime.october, 8));

  static List<NoteModel> notes = [note1, note2, note3, note4];

}