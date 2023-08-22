import 'package:flutter/material.dart';

class CustomCircleWidgets extends StatelessWidget {
  const CustomCircleWidgets(
      {super.key, required this.image, required this.backgroundColor});

  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: Image.asset(image),
    );
  }
}
