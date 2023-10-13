import 'dart:math';

import 'package:bytes_notes_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteCard extends ConsumerWidget {
  final NoteModel note;
  final int _i;
  NoteCard({
    super.key,
    required this.note,
  }): _i = index++;

  static int index = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int r (int val) => 255 - Random().nextInt(val);

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(r(80), r(80), r(80), Random().nextDouble())),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(note.text, style: const TextStyle(
                color: Colors.black,
                fontSize: 16
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
