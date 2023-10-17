import 'package:bytes_notes_app/theme/pallete.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final String hintText;
  final Widget leadingIcon;
  final TextEditingController controller;

  const HomeSearchBar({
    Key? key,
    required this.hintText,
    required this.leadingIcon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.searchBarColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: leadingIcon,
          hintText: hintText
        ),
      ),
    );
  }
}
