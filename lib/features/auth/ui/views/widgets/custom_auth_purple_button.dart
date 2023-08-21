
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

class CustomAuthPurpleButton extends StatelessWidget {
  const CustomAuthPurpleButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        // borderRadius: BorderRadius.circular(16)
      ),
      child: Text(
        text,
        style: AppStyles.textStyle17.copyWith(
            color: AppColors.kWhiteColor
        ),
      ),
    );
  }
}
