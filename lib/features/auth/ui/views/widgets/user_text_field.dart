
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

class UserTextField extends StatelessWidget {
  const UserTextField(
      {super.key,
        this.obscureTex = false,
        required this.labelText,
        required this.validator,
        required this.onChanged});

  final bool obscureTex;
  final String labelText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      cursorColor: AppColors.kBlackColor,
      cursorWidth: 1,
      maxLines: 1,
      minLines: 1,
      obscureText: obscureTex,
      style: AppStyles.textStyle17.copyWith(
          color: AppColors.kBlackColor,
          fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppStyles.textStyle13.copyWith(
            color: AppColors.kGreyColor,
            fontWeight: FontWeight.w500
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.kGreyColor)
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.kGreyColor)
        )
      ),
    );
  }
}
