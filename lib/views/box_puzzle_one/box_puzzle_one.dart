import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/views/box_puzzle_two/box_puzzle_two.dart';
import 'package:graduationprogectcalculation/widgets/custom_background_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_button.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_question_container.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_solution_container.dart';

import '../../widgets/color_box_container.dart';

class BoxPuzzleOne extends StatefulWidget {
  const BoxPuzzleOne({super.key});

  @override
  State<BoxPuzzleOne> createState() => _BoxPuzzleOneState();
}

class _BoxPuzzleOneState extends State<BoxPuzzleOne> {
  static int gridNumber = 4;
  List<bool> checked = List.filled(gridNumber, false);
  List<AssetImage?> images = List<AssetImage?>.filled(gridNumber, null);
  List<String> correctIndex = [
    'images/white_box.png',
    'images/white_box.png',
    'images/red_box.png',
    'images/red_box.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomBackgroundContainer(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .2,
              ),
              Row(
                children: [
                  const Expanded(
                    child: PuzzleQuestionContainer(
                      imagePath: 'images/box_puzzle1.png',
                      title: 'البطاقه أ',
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
                        builder: (context) => const BoxPuzzleTwo(),
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
      ),
    );
  }
}
