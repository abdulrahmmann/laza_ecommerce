

import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/user_text_field.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

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
                'Forgot Password',
                style: AppStyles.textStyle28.copyWith(
                  color: AppColors.kBlackColor,
                ),
                textAlign: TextAlign.center,
              ),

              Image.asset(AppAssets.cloud_img),

              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: UserTextField(
                  labelText: 'Email Address',
                  obscureTex: false,
                ),
              ),

              SizedBox(height: height*.18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Please write your email to receive a confirmation code to set a new password.',
                  style: AppStyles.textStyle13.copyWith(
                      color: AppColors.kGreyColor
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const CustomAuthPurpleButton(text: 'Confirm Mail'),
      ],
    );
  }
}
