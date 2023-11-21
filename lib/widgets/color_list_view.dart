import 'package:flutter/material.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIdex = 0;
  List<Color> colors = const [
    Color(0xff7E6551),
    Color(0xff938581),
    Color(0xff466362),
    Color(0xff8896AB),
    Color(0xffC5D5E4),
    Color(0xff7A7978),
    Color(0xff8DE4FF),
    Color(0xff8AC4FF),
    Color(0xff2E5266),
    Color(0xff6E8898),
    Color(0xffE2C044),
    Color(0xff4B3B40),
    Color(0xff03B5AA),
    Color(0xff037971),
    Color(0xff023436),
    Color(0xffC4FFF9),
    Color(0xff9CEAEF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currentIdex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIdex == index,
                ),
              ),
            );
          }),
    );
  }
}
