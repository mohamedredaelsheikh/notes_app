import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    this.maxlines = 1,
  });
  final String hinttext;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: kprimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
