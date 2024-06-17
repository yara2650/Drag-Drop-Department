import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/widgets/color_box_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_background_container.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_question_container.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_solution_container.dart';

import '../../widgets/custom_button.dart';

class BoxPuzzleTen extends StatefulWidget {
  const BoxPuzzleTen({super.key});

  @override
  State<BoxPuzzleTen> createState() => _BoxPuzzleTenState();
}

class _BoxPuzzleTenState extends State<BoxPuzzleTen> {
  static int gridNumber = 9;
  List<bool> checked = List.filled(gridNumber, false);
  List<AssetImage?> images = List<AssetImage?>.filled(gridNumber, null);
  List<String> correctIndex = [
    'images/red_and_white4.png',
    'images/red_and_white2.png',
    'images/white_box.png',
    'images/red_box.png',
    'images/red_and_white3.png',
    'images/white_box.png',
    'images/red_and_white1.png',
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
                    imagePath: 'images/box_puzzle10.png',
                    title: 'البطاقه (7)',
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
                  debugPrint('Puzzle Are Done');
                  setState(() {
                    images = List<AssetImage?>.filled(gridNumber, null);
                    checked = List<bool>.filled(gridNumber, false);
                  });
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
