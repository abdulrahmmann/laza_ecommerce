
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

class VerificationCodeTextField extends StatelessWidget {
  const VerificationCodeTextField({
    super.key,
    required this.first,
    required this.last});

  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: MediaQuery.of(context).size.height*.13,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          textAlign: TextAlign.center,
          style: AppStyles.textStyle22.copyWith(
              color: AppColors.kBlackColor
          ),
          minLines: 1,
          maxLines: 1,
          maxLength: 1,
          autofocus: false,
          cursorWidth: 1,
          cursorColor: AppColors.kPrimaryColor,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            if (value.isNotEmpty && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 2, color: AppColors.kGreyColor)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 2, color: AppColors.kPrimaryColor)
            ),
            counterText: '',
            counter: const Offstage(),
            hintText: '*',
            hintStyle: AppStyles.textStyle28.copyWith(
              color: AppColors.kGreyColor.withOpacity(.4)
            ),
            hintMaxLines: 1,
          ),
        ),
      ),
    );
  }
}

