import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hinttext: "Title",
            ),
            SizedBox(height: 16),
            CustomTextField(
              maxlines: 5,
              hinttext: "Content",
            ),
          ],
        ),
      ),
    );
  }
}
