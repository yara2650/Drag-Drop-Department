import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/views/box_puzzle_eight/box_puzzle_eight.dart';
import 'package:graduationprogectcalculation/widgets/color_box_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_background_container.dart';
import 'package:graduationprogectcalculation/widgets/custom_button.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_question_container.dart';
import 'package:graduationprogectcalculation/widgets/puzzle_solution_container.dart';

class BoxPuzzleSeven extends StatefulWidget {
  const BoxPuzzleSeven({super.key});

  @override
  State<BoxPuzzleSeven> createState() => _BoxPuzzleSevenState();
}

class _BoxPuzzleSevenState extends State<BoxPuzzleSeven> {
  static int gridNumber = 4;
  List<bool> checked = List.filled(gridNumber, false);
  List<AssetImage?> images = List<AssetImage?>.filled(gridNumber, null);
  List<String> correctIndex = [
    'images/red_and_white4.png',
    'images/red_and_white3.png',
    'images/red_and_white1.png',
    'images/red_and_white2.png',
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
                  imagePath: 'images/box_puzzle7.png',
                  title: 'البطاقه (4)',
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
                    builder: (context) => const BoxPuzzleEight(),
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
      )),
    );
  }
}
