import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorEditListView extends StatefulWidget {
  const ColorEditListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<ColorEditListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorEditListView> {
  late int currentIdex;
  @override
  void initState() {
    currentIdex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currentIdex = index;
                  widget.note.color = kColors[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIdex == index,
                ),
              ),
            );
          }),
    );
  }
}
