import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/widgets/custom_draggable_widget.dart';

class ColorBoxContainer extends StatelessWidget {
  const ColorBoxContainer({
    super.key,
  });
  final List<String> redAndWhiteBox = const [
    'images/red_and_white1.png',
    'images/red_and_white2.png',
    'images/red_and_white3.png',
    'images/red_and_white4.png',
  ];
  final List<String> blueAndYellow = const [
    'images/blue_and_yellow1.png',
    'images/blue_and_yellow2.png',
    'images/blue_and_yellow3.png',
    'images/blue_and_yellow4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(39),
        border: Border.all(
          color: const Color(0xffA74300),
          width: 2.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => const CustomDraggableWidget(
                image: 'images/white_box.png',
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              redAndWhiteBox.length,
              (index) => CustomDraggableWidget(
                image: redAndWhiteBox[index],
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => const CustomDraggableWidget(
                image: 'images/yellow_box.png',
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              blueAndYellow.length,
              (index) => CustomDraggableWidget(
                image: blueAndYellow[index],
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => const CustomDraggableWidget(
                image: 'images/red_box.png',
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => const CustomDraggableWidget(
                image: 'images/blue_box.png',
                widthRatio: .1,
                heightRatio: .05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


