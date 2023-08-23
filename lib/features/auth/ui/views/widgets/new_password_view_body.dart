
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/user_text_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

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
                'New Password',
                style: AppStyles.textStyle28.copyWith(
                  color: AppColors.kBlackColor,
                ),
                textAlign: TextAlign.center,
              ),

              Image.asset(AppAssets.cloud_img),

              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: [
                    const UserTextField(
                      labelText: 'Password',
                      obscureTex: false,
                    ),
                    SizedBox(height: height*.02),
                    const UserTextField(
                      labelText: 'Confirm Password',
                      obscureTex: false,
                    ),
                  ],
                )
              ),

              // code

              SizedBox(height: height*.12),
              Text(
                'Please write your new password. ',
                style: AppStyles.textStyle13.copyWith(
                  color: AppColors.kGreyColor,
                ),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
        const CustomAuthPurpleButton(text: 'Reset Password'),
      ],
    );
  }
}
