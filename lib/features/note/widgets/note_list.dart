import 'package:bytes_notes_app/domain/di/use_case_provider.dart';
import 'package:bytes_notes_app/features/note/controller/notes_view_controller.dart';
import 'package:bytes_notes_app/gen/assets.gen.dart';
import 'package:bytes_notes_app/models/note_model.dart';
import 'package:bytes_notes_app/theme/pallete.dart';
import 'package:bytes_notes_app/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bytes_notes_app/common/error_page.dart';
import 'package:bytes_notes_app/common/loading_page.dart';
import 'package:bytes_notes_app/samples/note_model_samples.dart'
    show NoteSamples;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tuple/tuple.dart';

final listNotesProvider =
    StreamProvider.autoDispose<Tuple2<List<NoteModel>, List<NoteModel>>>((ref) {
  var useCase = ref.read(getAllNoteUseCaseProvider);
  return useCase.execute();
});

class NoteList extends ConsumerStatefulWidget {
  const NoteList({super.key});

  @override
  ConsumerState createState() => _NoteListState();
}

class _NoteListState extends ConsumerState<NoteList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final listNotes = ref.watch(listNotesProvider);

    return ref.watch(listNotesProvider).when(
          data: (notes) {
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
                        ...(NoteSamples.notes
                            .map((note) => NoteCard(note: note))),
                        ...(notes.map((v) => NoteCard(
                                note: NoteModel.fromJson({
                              'title': 'To-do list',
                              'content': v,
                              'createdTime': DateTime.timestamp(),
                              'description': '',
                              'color': '${randomLightColor(0.4).value}',
                              'isPined': false,
                            })))),
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
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
        color: note.color == null
            ? Pallete.primaryNoteColor
            : Color(note.color!.toInt()),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(20),
            // color: randomLightColor(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(note.title,
                            style: GlobalTextTheme.noteCardTitleText)),
                    if (note.isPinned ??
                        false) // TOOD: replace with if (pinned)
                      Assets.svgs.pin26.svg(width: 20, height: 20)
                    // const Icon(
                    //   Icons.push_pin,
                    //   color: Pallete.whiteColor,
                    // )
                  ],
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(note.content))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
