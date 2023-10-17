import 'package:bytes_notes_app/gen/assets.gen.dart';
import 'package:bytes_notes_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetError extends StatelessWidget {
  const BottomSheetError(
      {super.key,
      required this.title,
      required this.textButton,
      required this.onTapButton});

  final String title;

  final String textButton;

  final VoidCallback onTapButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(Assets.svgs.icSettings.path, width: 20, height: 20,),
        const SizedBox(height: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: ElevatedButton(
            onPressed: onTapButton,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50), // NEW
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              backgroundColor: AppColors.colorPrimaryBase,
            ),
            child: Text(
              textButton,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        )
      ]),
    );
  }
}
