import 'package:flutter/material.dart';

class CustomPuzzleImagesContainer extends StatelessWidget {
  const CustomPuzzleImagesContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xff897ABD),
        border: Border.all(
          width: 1,
          color: const Color(0xffD2D1F6),
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: child,
    );
  }
}
