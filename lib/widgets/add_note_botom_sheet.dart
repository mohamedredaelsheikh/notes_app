import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(
            hinttext: "Title",
          ),
          SizedBox(height: 16),
          CustomTextField(
            maxlines: 5,
            hinttext: "Content",
          )
        ],
      ),
    );
  }
}
