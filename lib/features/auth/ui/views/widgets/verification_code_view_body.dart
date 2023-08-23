

import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/verification_code_text_field.dart';
import 'package:laza/features/auth/ui/views/widgets/verification_code_view_body.dart';

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

              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  VerificationCodeTextField(first: true, last: false),
                  VerificationCodeTextField(first: false, last: false),
                  VerificationCodeTextField(first: false, last: false),
                  VerificationCodeTextField(first: false, last: true),
                ],
              ),



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

