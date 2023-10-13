import 'package:bytes_notes_app/features/note/widgets/note_list.dart';
import 'package:bytes_notes_app/features/notifications/views/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bytes_notes_app/constants/constants.dart';
import 'package:bytes_notes_app/features/explore/view/explore_view.dart';
import 'package:bytes_notes_app/features/note/widgets/tweet_list.dart';
import 'package:bytes_notes_app/theme/pallete.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
        title: const DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontSize: 20),
          child: Row(
            children: [
              Text('2023 ', style: TextStyle(fontFamily: 'Avenir')),
              Text('May', style: TextStyle(
                  fontFamily: 'Avenir', fontWeight: FontWeight.w900))
            ],
          ),
        ));
  }

  static List<Widget> bottomTabBarPages = [
    NoteList(),
    TweetList(),
    ExploreView(),
    NotificationView(),
  ];
}
