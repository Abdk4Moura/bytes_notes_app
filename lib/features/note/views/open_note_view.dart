import 'package:bytes_notes_app/common/bottom_sheet_error.dart';
import 'package:bytes_notes_app/constants/ui_constants.dart';
import 'package:bytes_notes_app/features/create/create_note_state_provider.dart';
import 'package:bytes_notes_app/models/background/background_model.dart';
import 'package:bytes_notes_app/models/note_model.dart';
import 'package:bytes_notes_app/theme/theme.dart';
import 'package:bytes_notes_app/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

final selectColorState = StateProvider.autoDispose((ref) {
  final listData = ref.read(backgroundDataProvider);
  return listData.first;
});

typedef ValidateError = Tuple2<String, String>;

final _validateProvider = StateProvider.autoDispose<ValidateError>((ref) {
  return const Tuple2('', '');
});

final _provideTextTitleController =
    Provider.autoDispose((ref) => TextEditingController(text: ""));
final _provideTextContentController =
    Provider.autoDispose((ref) => TextEditingController(text: ""));

final isPinnedState = StateProvider.autoDispose((ref) => false);

class OpenNoteView extends ConsumerWidget {
  final NoteModel note;
  OpenNoteView({Key? key, this.note = n}) : super(key: key);

  static MaterialPageRoute<OpenNoteView> route() =>
      MaterialPageRoute(builder: (context) => OpenNoteView());

  final TextEditingController noteContentTextController =
      TextEditingController();
  final TextEditingController? noteTitleTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var colorState = ref.watch(selectColorState);
    var statePinned = ref.watch(isPinnedState.notifier);
    var titleController = ref.watch(_provideTextTitleController);
    var contentController = ref.watch(_provideTextContentController);
    var errorString = ref.watch(_validateProvider);
    ref.listen(createNoteStateProvider, (previous, next) {
      if (next is CreateSuccess) {
        Navigator.pop(context);
      } else if (next is CreateError) {
        showModalBottomSheet(
          isDismissible: false,
          isScrollControlled: false,
          context: context,
          builder: (context) => BottomSheetError(
            title: "${context.toString()} ops_problem",
            textButton: '${errorString.item1}, == ${errorString.item2}',
            onTapButton: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
        );
      }
    });
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorState.bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, size: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.folder),
            onPressed: () {},
          ),
          PinIconButton(statePinned),
          IconButton(
            icon: const Icon(Icons.ios_share_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body:
          // isLoading
          //     ? const Loader() :
          SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: screenHeight,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  color: colorState.bgColor,
                  child: Column(
                    children: [
                      TextField(
                        controller: titleController,
                        style: Theme.of(context).textTheme.titleLarge,
                        onChanged: (value) {
                          ref.read(_validateProvider.notifier).update((state) {
                            return Tuple2(
                                value.isEmpty ? 'Title cannot be empty' : '',
                                state.item2);
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Title",
                          hintStyle:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Pallete.greyColor,
                                  ),
                          border: InputBorder.none,
                        ),
                        maxLines: null,
                      ),
                      TextField(
                        controller: contentController,
                        style: Theme.of(context).textTheme.bodyMedium,
                        onChanged: (value) {
                          ref.read(_validateProvider.notifier).update((state) {
                            return Tuple2(state.item1,
                                value.isEmpty ? 'Content cannot be empty' : '');
                          });
                        },
                        decoration: InputDecoration(
                          hintText: " ...",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Pallete.greyColor),
                          border: InputBorder.none,
                        ),
                        maxLines: null,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              width: screenWidth - 40,
              // height: MediaQuery.of(context).size.height,
              child: floatingBB(ref,
                  createNoteStateProvider: createNoteStateProvider,
                  validateProvider: _validateProvider,
                  titleController: titleController,
                  contentController: contentController,
                  colorState: colorState,
                  statePinned: statePinned),
            )
          ],
        ),
      ),
    );
  }
}

class PinIconButton extends StatefulWidget {
  final StateController<bool> statePinned;
  const PinIconButton(this.statePinned, {super.key});

  @override
  State<PinIconButton> createState() => _PinIconButtonState();
}

class _PinIconButtonState extends State<PinIconButton> {
  Icon? _currIcon;
  @override
  Widget build(BuildContext context) {
    Tuple2 iconToggleTuple =
        const Tuple2(Icon(Icons.push_pin_outlined), Icon(Icons.push_pin));
    _currIcon = iconToggleTuple.item1;

    return IconButton(
      icon: const Icon(Icons.push_pin_outlined),
      onPressed: () {
        setState(() {
          widget.statePinned.update((state) => state);
          if (_currIcon == iconToggleTuple.item1) {
            _currIcon = iconToggleTuple.item2;
          } else {
            _currIcon = iconToggleTuple.item1;
          }
        });
      },
    );
  }
}

const NoteModel n = NoteModel(title: '', content: '');
