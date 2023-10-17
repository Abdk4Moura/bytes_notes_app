import 'package:bytes_notes_app/theme/theme.dart';
import 'package:bytes_notes_app/theme/typography.dart';
import 'package:flutter/material.dart';


class Label extends StatelessWidget {
  final String labelText;
  final bool isDark;

  const Label({Key? key, required this.labelText, this.isDark = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isDark ? Colors.black : Colors.white,
        border: const Border.fromBorderSide(BorderSide(
          width: 1,
          color: Pallete.cardBorderColor,
        )),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Define the action to perform when the label is clicked
            print('Label Clicked');
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Center(
              child: Text(
                labelText,
                style: GlobalTextTheme.labelText.copyWith(
                  color: isDark ? Colors.white : null,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
