import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/views/boy_puzzle/boy_puzzle.dart';
import 'package:graduationprogectcalculation/views/car_puzzle/car_puzzle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoyPuzzle(),
    );
  }
}

