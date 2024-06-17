import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onTap,
      required this.width,
      required this.height});
  final String text;
  final void Function()? onTap;
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            31,
          ),
          border: Border.all(
            width: 1,
            color: const Color(0xff000000),
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xffFFCFF7),
              Color(0xff9180C4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color:  Color(0xffECE4F2),
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
