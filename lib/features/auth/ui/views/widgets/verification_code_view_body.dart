

import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';

class VerificationCodeViewBody extends StatelessWidget {
  const VerificationCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: CustomCircleWidgets(
                    image: 'assets/images/arrowleft.png',
                    backgroundColor: AppColors.kWhiteGreyColor,
                  ),
                ),
              ),

              SizedBox(height: height*.02),
              Text(
                'Verification Code',
                style: AppStyles.textStyle28.copyWith(
                  color: AppColors.kBlackColor,
                ),
                textAlign: TextAlign.center,
              ),

              Image.asset(AppAssets.cloud_img),

              // code
              SizedBox(height: height*.035),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VerificationCodeTextField(),
                  VerificationCodeTextField(),
                  VerificationCodeTextField(),
                  VerificationCodeTextField(),
                ],
              ),

              // code

              SizedBox(height: height*.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'resend confirmation code. ',
                    style: AppStyles.textStyle13.copyWith(
                        color: AppColors.kGreyColor,
                    ),
                  ),
                  Text(
                    '00:20',
                    style: AppStyles.textStyle13.copyWith(
                        color: AppColors.kBlackColor,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
        const CustomAuthPurpleButton(text: 'Confirm Code'),
      ],
    );
  }
}

class VerificationCodeTextField extends StatelessWidget {
  const VerificationCodeTextField({super.key, this.autofocus = false});

  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 98,
      child: TextField(
        textAlign: TextAlign.center,
        style: AppStyles.textStyle22.copyWith(
          color: AppColors.kBlackColor
        ),
        minLines: 1,
        maxLines: 1,
        maxLength: 1,
        autofocus: autofocus,
        cursorWidth: 1,
        cursorColor: AppColors.kPrimaryColor,
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
        ),
      ),
    );
  }
}

