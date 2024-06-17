import 'package:flutter/material.dart';

class CustomDraggableWidget extends StatelessWidget {
  const CustomDraggableWidget(
      {super.key,
      required this.image,
      required this.widthRatio,
      required this.heightRatio});
  final String image;
  final double widthRatio, heightRatio;
  @override
  Widget build(BuildContext context) {
    return Draggable<AssetImage>(
      data: AssetImage(image),
      onDragCompleted: () {},
      feedback: Image.asset(
        image,
        width: MediaQuery.of(context).size.width * widthRatio,
        height: MediaQuery.of(context).size.height * heightRatio,
      ),
      childWhenDragging: Container(),
      child: Image.asset(
        image,
        width: MediaQuery.of(context).size.width * widthRatio,
        height: MediaQuery.of(context).size.height * heightRatio,
      ),
    );
  }
}
