import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bytes_notes_app/constants/constants.dart';
import 'package:bytes_notes_app/features/home/widgets/side_drawer.dart';
import 'package:bytes_notes_app/features/note/views/create_tweet_view.dart';
import 'package:bytes_notes_app/theme/pallete.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

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
  onCreateTweet() {
    Navigator.push(context, CreateTweetScreen.route());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _buildTextFormField,
            // SearchBar(
            //   leading: Icon(Icons.search,),
            //   hintText: 'Search for notes',
            // ),
            NoteList(),
          ],
        ),
      ),
    );
  }

  TextFormField get _buildTextFormField {
    return TextFormField(
            style: const TextStyle(fontFamily: 'Avenir'),
            decoration: InputDecoration(
              constraints: const BoxConstraints(maxHeight: 30),
              contentPadding: const EdgeInsets.all(0),
              fillColor: Pallete.searchBarColor,
              prefix: const Icon(Icons.search_rounded),
              hintText: 'Search for Notes',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
  }

}
