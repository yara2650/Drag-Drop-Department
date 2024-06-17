import 'package:flutter/material.dart';

class PuzzleQuestionContainer extends StatelessWidget {
  const PuzzleQuestionContainer(
      {super.key, required this.imagePath, required this.title});
  final String imagePath, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffA74300), width: 2.5),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              color: Color(0xffFCA061),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            imagePath,
            height: 100,
          )
        ],
      ),
    );
  }
}
