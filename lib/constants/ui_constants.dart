import 'package:bytes_notes_app/features/note/widgets/note_list.dart';
import 'package:bytes_notes_app/models/background/background_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuple/tuple.dart';

class UIConstants {
  static AppBar appBar() {
    final now = DateTime.now();
    final String year = now.year.toString();
    final String month = nameFromMonthIndex(now.month);

    return AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.black,
          )
        ],
        title: DefaultTextStyle(
          style: const TextStyle(color: Colors.black, fontSize: 20),
          child: Row(
            children: [
              Text('$year ', style: const TextStyle(fontFamily: 'Avenir')),
              Text(month,
                  style: const TextStyle(
                      fontFamily: 'Avenir', fontWeight: FontWeight.w900))
            ],
          ),
        ));
  }

  static String nameFromMonthIndex(int monthIndex) {
    switch (monthIndex) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        throw Error();
    }
  }

  static List<Widget> bottomTabBarPages = [
    NoteList(),
    // TweetList(),
    // ExploreView(),
    // NotificationView(),
  ];
}

Widget floatingBB(
  WidgetRef ref, {
  required createNoteStateProvider,
  required validateProvider,
  required TextEditingController titleController,
  required TextEditingController contentController,
  required BackgroundModel colorState,
  required StateController<bool> statePinned,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BottomNavigationBar(
          backgroundColor: Colors.black,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          iconSize: 20,
          onTap: (int index) {
            switch (index) {
              case 7:
                if (titleController.text.isNotEmpty &&
                    contentController.text.isNotEmpty) {
                  ref.read(createNoteStateProvider.notifier).createNote(
                        titleController.text,
                        contentController.text,
                        colorState.bgColor,
                        statePinned.state,
                      );
                } else {
                  ref.read(validateProvider.notifier).update((state) {
                    return const Tuple2(
                        'Title is not empty', 'Content is not empty');
                  });
                }
            }
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.text_fields),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.format_italic), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_underline), label: 'Underline'),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_align_justify), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_align_left), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_align_right), label: ''),
          ]),
    );

Widget floatingBottomBar() {
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.blue, // Change the color as needed
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle home button tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search button tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // Handle favorite button tap
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle profile button tap
              },
            ),
          ],
        ),
      ),
    ),
  );
}
