
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_styles.dart';

class MenWomenButton extends StatelessWidget {
  const MenWomenButton({super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onTap});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height*.08,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: AppStyles.textStyle17.copyWith(
                color: textColor
            ),
          ),
        ),
      ),
    );
  }
}