import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduationprogectcalculation/widgets/custom_drag_target_widget.dart';

class PuzzleSolutionContainer extends StatefulWidget {
  const PuzzleSolutionContainer({
    super.key,
    required this.gridCount,
    required this.images,
    required this.checked,
    required this.correctIndex,
  });
  final int gridCount;
  final List<AssetImage?> images;
  final List<bool> checked;
  final List<String> correctIndex;

  @override
  State<PuzzleSolutionContainer> createState() =>
      _PuzzleSolutionContainerState();
}

class _PuzzleSolutionContainerState extends State<PuzzleSolutionContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffA74300), width: 2.5),
      ),
      child: Column(
        children: [
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'اسحب داخل المربع',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffFCA061),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          GridView.builder(
            itemCount: widget.gridCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.gridCount == 4 ? 2 : 3,
            ),
            itemBuilder: (context, index) => CustomDragTargetWidget(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffA74300),
                  width: .1,
                ),
              ),
              widthRatio: .2,
              heightRatio: .1,
              droppedImage: widget.images[index],
              onAccept: (AssetImage? droppedImage) {
                if (droppedImage?.assetName == widget.correctIndex[index]) {
                  widget.checked[index] = true;
                }
                debugPrint(droppedImage?.assetName);
                setState(() {
                  widget.images[index] = droppedImage;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
