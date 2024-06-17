import 'package:flutter/material.dart';

class CustomDragTargetWidget extends StatefulWidget {
  const CustomDragTargetWidget(
      {super.key,
      required this.widthRatio,
      required this.heightRatio,
      this.droppedImage,
      this.onAccept,
      this.decoration});
  final double widthRatio, heightRatio;
  final AssetImage? droppedImage;
  final Function(AssetImage)? onAccept;
  final Decoration? decoration;
  @override
  State<CustomDragTargetWidget> createState() => _CustomDragTargetWidgetState();
}

class _CustomDragTargetWidgetState extends State<CustomDragTargetWidget> {
  @override
  Widget build(BuildContext context) {
    return DragTarget<AssetImage>(
      builder: (context, List<AssetImage?> candidateData, rejectedData) {
        return Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * widget.widthRatio,
          height: MediaQuery.of(context).size.height * widget.heightRatio,
          decoration: widget.decoration ??
              BoxDecoration(
                color: const Color(0xff897ABD),
                border: Border.all(width: .1, color: const Color(0xffD2D1F6)),
              ),
          child: widget.droppedImage != null
              ? Image(
                  image: widget.droppedImage!,
                  width: MediaQuery.of(context).size.width * widget.widthRatio,
                  height:
                      MediaQuery.of(context).size.height * widget.heightRatio,
                  fit: BoxFit.fill,
                )
              : const Center(
                  child: Text(
                    'Drop image here',
                    style: TextStyle(fontSize: 7),
                  ),
                ),
        );
      },
      onAccept: widget.onAccept,
    );
  }
}
