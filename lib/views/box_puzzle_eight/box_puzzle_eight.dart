import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/views/box_puzzle_nine/box_puzzle_nine.dart';
import 'package:graduationprogectcalculation/widgets/color_box_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_background_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_button.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_question_container.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_solution_container.dart';

class BoxPuzzleEight extends StatefulWidget {
  const BoxPuzzleEight({super.key});

  @override
  State<BoxPuzzleEight> createState() => _BoxPuzzleEightState();
}

class _BoxPuzzleEightState extends State<BoxPuzzleEight> {
  static int gridNumber = 9;
  List<bool> checked = List.filled(gridNumber, false);
  List<AssetImage?> images = List<AssetImage?>.filled(gridNumber, null);
  List<String> correctIndex = [
    'images/red_and_white1.png',
    'images/red_box.png',
    'images/red_and_white2.png',
    'images/white_box.png',
    'images/red_box.png',
    'images/white_box.png',
    'images/red_and_white4.png',
    'images/red_box.png',
    'images/red_and_white3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
            ),
            Row(
              children: [
                const Expanded(
                  child: PuzzleQuestionContainer(
                    imagePath: 'images/box_puzzle8.png',
                    title: 'البطاقه (5)',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: PuzzleSolutionContainer(
                    gridCount: gridNumber,
                    checked: checked,
                    correctIndex: correctIndex,
                    images: images,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const ColorBoxContainer(),
            const Expanded(child: SizedBox()),
            CustomButton(
              onTap: () {
                if (checked.contains(false)) {
                  debugPrint("E R R O R");
                  setState(() {
                    images = List<AssetImage?>.filled(gridNumber, null);
                    checked = List<bool>.filled(gridNumber, false);
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BoxPuzzleNine(),
                    ),
                  );
                }
              },
              text: 'إرسال',
              width: 150,
              height: 50,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
