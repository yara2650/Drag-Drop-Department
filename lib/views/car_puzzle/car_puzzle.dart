import 'package:flutter/material.dart';
import 'package:graduationprogectcalculation/views/box_puzzle_one/box_puzzle_one.dart';
import 'package:graduationprogectcalculation/widgets/custom_button.dart';
import 'package:graduationprogectcalculation/widgets/custom_drag_target_widget.dart';
import 'package:graduationprogectcalculation/widgets/custom_draggable_widget.dart';
import 'package:graduationprogectcalculation/widgets/custom_puzzle_image_container.dart';
import 'package:graduationprogectcalculation/widgets/popup_window.dart';

class CarPuzzle extends StatefulWidget {
  const CarPuzzle({super.key});

  @override
  State<CarPuzzle> createState() => Pg();
}

class Pg extends State<CarPuzzle> {
  List<AssetImage?> _droppedImages = List<AssetImage?>.filled(7, null);

  List<String> correctIndex = [
    'images/car_1.png',
    'images/car_6.png',
    'images/car_5.png',
    'images/car_2.png',
    'images/car_7.png',
    'images/car_3.png',
    'images/car_4.png',
  ];
  List<bool> check = List<bool>.filled(7, false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitLayout()
                : _buildLandscapeLayout();
          },
        ),
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/rearrangeimagebg.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomDragTargetWidget(
                    widthRatio: 118 / 375,
                    heightRatio: 82 / 812,
                    droppedImage: _droppedImages[0],
                    onAccept: (AssetImage? droppedImage) {
                      if (droppedImage?.assetName == correctIndex[0]) {
                        check[0] = true;
                      }
                      debugPrint(droppedImage?.assetName);
                      setState(
                        () {
                          _droppedImages[0] = droppedImage;
                        },
                      );
                    },
                  ),
                  CustomDragTargetWidget(
                    widthRatio: 118 / 375,
                    heightRatio: 72 / 812,
                    droppedImage: _droppedImages[1],
                    onAccept: (AssetImage? droppedImage) {
                      if (droppedImage?.assetName == correctIndex[1]) {
                        check[1] = true;
                      }
                      debugPrint(droppedImage?.assetName);
                      setState(
                        () {
                          _droppedImages[1] = droppedImage;
                        },
                      );
                    },
                  ),
                ],
              ),
              CustomDragTargetWidget(
                widthRatio: 39 / 375,
                heightRatio: 154 / 812,
                droppedImage: _droppedImages[2],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[2]) {
                    check[2] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(
                    () {
                      _droppedImages[2] = droppedImage;
                    },
                  );
                },
              ),
              Column(
                children: [
                  CustomDragTargetWidget(
                    widthRatio: 54 / 375,
                    heightRatio: 72 / 812,
                    droppedImage: _droppedImages[3],
                    onAccept: (AssetImage? droppedImage) {
                      if (droppedImage?.assetName == correctIndex[3]) {
                        check[3] = true;
                      }
                      debugPrint(droppedImage?.assetName);
                      setState(
                        () {
                          _droppedImages[3] = droppedImage;
                        },
                      );
                    },
                  ),
                  CustomDragTargetWidget(
                    widthRatio: 54 / 375,
                    heightRatio: 82 / 812,
                    droppedImage: _droppedImages[4],
                    onAccept: (AssetImage? droppedImage) {
                      if (droppedImage?.assetName == correctIndex[4]) {
                        check[4] = true;
                      }
                      debugPrint(droppedImage?.assetName);
                      setState(
                        () {
                          _droppedImages[4] = droppedImage;
                        },
                      );
                    },
                  ),
                ],
              ),
              CustomDragTargetWidget(
                widthRatio: 55 / 375,
                heightRatio: 154 / 812,
                droppedImage: _droppedImages[5],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[5]) {
                    check[5] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(
                    () {
                      _droppedImages[5] = droppedImage;
                    },
                  );
                },
              ),
              CustomDragTargetWidget(
                widthRatio: 50 / 375,
                heightRatio: 154 / 812,
                droppedImage: _droppedImages[6],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[6]) {
                    check[6] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(
                    () {
                      _droppedImages[6] = droppedImage;
                    },
                  );
                },
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          CustomPuzzleImagesContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/car_6.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/car_5.png',
                        widthRatio: .4,
                        heightRatio: .1),
                    const CustomDraggableWidget(
                        image: 'images/car_7.png',
                        widthRatio: .1,
                        heightRatio: .1),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomDraggableWidget(
                      image: 'images/car_4.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/car_3.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/car_2.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    CustomDraggableWidget(
                      image: 'images/car_1.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          CustomButton(
            height: 60,
            width: 250,
            text: 'إرسال',
            onTap: () {
              if (check.contains(false)) {
                debugPrint("failed");
                showDialog(
                  context: context,
                  builder: (context) => PopupWindow(
                    title: 'إجابة خاطئه',
                    content: 'ترتيب الصور غير صحيح',
                    type: 'f',
                    ok: () {
                      setState(() {
                        _droppedImages = List<AssetImage?>.filled(7, null);
                        check = List<bool>.filled(7, false);
                      });
                      Navigator.pop(context);
                    },
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BoxPuzzleOne(),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/rearrangeimagebg.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[0],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[0]) {
                    check[0] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[0] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[1],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[1]) {
                    check[1] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[1] = droppedImage;
                  });
                },
              ),
            ],
          ),
          CustomDragTargetWidget(
            widthRatio: .4,
            heightRatio: .1,
            droppedImage: _droppedImages[2],
            onAccept: (AssetImage? droppedImage) {
              if (droppedImage?.assetName == correctIndex[2]) {
                check[2] = true;
              }
              debugPrint(droppedImage?.assetName);
              setState(() {
                _droppedImages[2] = droppedImage;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDragTargetWidget(
                  widthRatio: .2,
                  heightRatio: .1,
                  droppedImage: _droppedImages[3],
                  onAccept: (AssetImage? droppedImage) {
                    if (droppedImage?.assetName == correctIndex[3]) {
                      check[3] = true;
                    }
                    debugPrint(droppedImage?.assetName);
                    setState(() {
                      _droppedImages[3] = droppedImage;
                    });
                  }),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[4],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[4] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[4] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[5],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[5] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[5] = droppedImage;
                  });
                },
              ),
              CustomDragTargetWidget(
                widthRatio: .2,
                heightRatio: .1,
                droppedImage: _droppedImages[6],
                onAccept: (AssetImage? droppedImage) {
                  if (droppedImage?.assetName == correctIndex[4]) {
                    check[6] = true;
                  }
                  debugPrint(droppedImage?.assetName);
                  setState(() {
                    _droppedImages[6] = droppedImage;
                  });
                },
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          CustomPuzzleImagesContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/car_6.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    const CustomDraggableWidget(
                        image: 'images/car_5.png',
                        widthRatio: .4,
                        heightRatio: .1),
                    const CustomDraggableWidget(
                      image: 'images/car_4.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/car_3.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/car_2.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                    const CustomDraggableWidget(
                      image: 'images/car_1.png',
                      widthRatio: .2,
                      heightRatio: .1,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * .01,
                // ),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     CustomDraggableWidget(
                //       image: 'images/poy4.jpg',
                //       widthRatio: .2,
                //       heightRatio: .1,
                //     ),
                //     CustomDraggableWidget(
                //       image: 'images/poy1.jpg',
                //       widthRatio: .2,
                //       heightRatio: .1,
                //     ),
                //     CustomDraggableWidget(
                //       image: 'images/poy2.jpg',
                //       widthRatio: .2,
                //       heightRatio: .1,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            height: 60,
            width: 250,
            text: 'إرسال',
            onTap: () {
              if (check.contains(false)) {
                debugPrint("failed");
                showDialog(
                  context: context,
                  builder: (context) => PopupWindow(
                    title: 'إجابة خاطئه',
                    content: 'ترتيب الصور غير صحيح',
                    type: 'f',
                    ok: () {
                      setState(() {
                        _droppedImages = List<AssetImage?>.filled(5, null);
                        check = List<bool>.filled(5, false);
                      });
                      Navigator.pop(context);
                    },
                  ),
                );
              } else {
                debugPrint("good");
                showDialog(
                  context: context,
                  builder: (context) => PopupWindow(
                    title: 'إجابة صحيحه',
                    content: 'ترتيب الصور  صحيح',
                    type: 's',
                    ok: () {
                      setState(() {
                        _droppedImages = List<AssetImage?>.filled(5, null);
                        check = List<bool>.filled(5, false);
                      });
                      Navigator.pop(context);
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
