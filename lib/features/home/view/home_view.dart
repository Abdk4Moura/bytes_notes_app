import 'package:bytes_notes_app/constants/ui_constants.dart';
import 'package:bytes_notes_app/features/home/widgets/date_button.dart';
import 'package:bytes_notes_app/features/home/widgets/label.dart';
import 'package:bytes_notes_app/features/home/widgets/search_bar.dart';
import 'package:bytes_notes_app/features/note/views/open_note_view.dart';
import 'package:flutter/material.dart';

import '../../note/widgets/note_list.dart';

class HomeView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const HomeView(),
      );

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState
    extends State<HomeView> // with SingleTickerProviderStateMixin
{
  TextEditingController? homeSearchBarTextController;

  @override
  void initState() {
    super.initState();
    homeSearchBarTextController = TextEditingController();
  }

  @override
  void dispose() {
    homeSearchBarTextController!.dispose();
    super.dispose();
  }
  openNoteView() {
    Navigator.push(context, OpenNoteView.route());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(),
      floatingActionButton: FloatingActionButton(
        key: const ObjectKey('floating_button'),
        onPressed: openNoteView,
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _buildTextField,
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DateButton(weekday: 'Tue', day: '23', isDark: true),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Wed', day: '24'),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Thu', day: '25'),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Fri', day: '26'),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Sat', day: '27'),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Sun', day: '28'),
                  SizedBox(width: 3),
                  DateButton(weekday: 'Mon', day: '29'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Label(labelText: 'All', isDark: true),
                  SizedBox(width: 3),
                  Label(labelText: 'Important'),
                  SizedBox(width: 3),
                  Label(labelText: 'Lecture notes'),
                  SizedBox(width: 3),
                  Label(labelText: 'To-do lists'),
                  SizedBox(width: 3),
                  Label(labelText: 'Shopping list'),
                ],
              ),
            ),
            NoteList(),
          ],
        ),
      ),
    );
  }

  HomeSearchBar get _buildTextField {
    return HomeSearchBar(hintText: 'Search for Notes', leadingIcon: const Icon(Icons.search), controller: homeSearchBarTextController!);
  }
}
