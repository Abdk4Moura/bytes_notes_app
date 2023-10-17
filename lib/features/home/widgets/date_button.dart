import 'package:bytes_notes_app/theme/pallete.dart';
import 'package:bytes_notes_app/theme/typography.dart';
import 'package:flutter/material.dart';

class DateButton extends StatelessWidget {
  final String weekday;
  final String day;
  final bool isDark;
  const DateButton({Key? key, required this.weekday, required this.day, this.isDark=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDark ? Colors.black : Colors.white,
          border: isDark ? null : const Border.fromBorderSide(BorderSide(width: 1, color: Pallete.cardBorderColor))
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9).copyWith(bottom: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(weekday, style: GlobalTextTheme.dayButtonText.copyWith(color: isDark ? Colors.white70 : Colors.black87),),
                Text(day, style: GlobalTextTheme.dayButtonDateText.copyWith(color: isDark ? Colors.white : Colors.black))
              ]
            )
          ),
        ),
      ),
    );
  }
}
