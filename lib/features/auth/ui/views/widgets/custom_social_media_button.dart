
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({super.key,
    required this.text,
    required this.image,
    required this.backgroundColor});

  final String text;
  final String image;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(
            text,
            style: AppStyles.textStyle17.copyWith(
                color: AppColors.kWhiteColor
            ),
          )
        ],
      ),
    );
  }
}
