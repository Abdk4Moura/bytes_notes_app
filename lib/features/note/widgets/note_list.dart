import 'package:bytes_notes_app/models/note_model.dart';
import 'package:bytes_notes_app/theme/pallete.dart';
import 'package:bytes_notes_app/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bytes_notes_app/common/error_page.dart';
import 'package:bytes_notes_app/common/loading_page.dart';
import 'package:bytes_notes_app/features/note/controller/tweet_controller.dart';
import 'package:flutter_svg/svg.dart';

class NoteList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.read(getDummyProvider).when(
          data: (notes) {
            child:
            return Expanded(
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.only(top: 20),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        ...(notes.map((v) => NoteCard(
                                note: NoteModel.fromJson({
                              'title': 'To-do list',
                              'text': v,
                              'createdTime': DateTime.timestamp(),
                              'description': '',
                              'isDoneTask': false,
                              'label': '',
                              'isPined': false,
                            })))),
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 200,
                          color: randomLightColor(1),
                          child: const Text('Sound of screams but the',
                              style: TextStyle(fontSize: 50)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: randomLightColor(1),
                          child: const Text('Who scream'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: randomLightColor(1),
                          child: const Text('Revolution is coming...'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          color: randomLightColor(1),
                          child: const Text('Revolution, they...'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stackTrace) => ErrorText(
            error: error.toString(),
          ),
          loading: () => const Loader(),
        );
  }
}

class NoteCard extends StatelessWidget {
  final NoteModel note;

  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: randomLightColor(0.4),
      ),
      padding: const EdgeInsets.all(20),
      // color: randomLightColor(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('To-do list', style: GlobalTextTheme.noteTitleText),
              if (true) // TOOD: replace with if (pinned)
                const Icon(
                  Icons.push_pin,
                  color: Pallete.whiteColor,
                )
            ],
          ),
          Expanded(
              child:
                  Align(alignment: Alignment.topLeft, child: Text(note.text))),
        ],
      ),
    );
  }
}
