import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_Buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hinttext: "Title",
            ),
            SizedBox(height: 16),
            CustomTextField(
              maxlines: 5,
              hinttext: "Content",
            ),
            SizedBox(
              height: 80,
            ),
            CustomButtom(buttomname: "Add"),
          ],
        ),
      ),
    );
  }
}
