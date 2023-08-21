
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

import 'custom_auth_purple_button.dart';
import 'custom_circle_widget.dart';
import 'custom_social_media_button.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*.046),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomCircleWidgets(
                backgroundColor: AppColors.kWhiteGreyColor,
                image: AppAssets.left_arrow,
              ),
            ),
            SizedBox(height: height*.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Let’s Get Started',
                  style: AppStyles.textStyle25.copyWith(
                    color: AppColors.kBlackColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: height*.099),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomSocialMediaButton(
                      image: AppAssets.facebook_logo,
                      text: 'Facebook',
                      backgroundColor: AppColors.kBlueDarkColor,
                    ),
                    SizedBox(height: height*.012),
                    const CustomSocialMediaButton(
                      image: AppAssets.twitter_logo,
                      text: 'Twitter',
                      backgroundColor: AppColors.kBlueLightColor,
                    ),
                    SizedBox(height: height*.012),
                    const CustomSocialMediaButton(
                      image: AppAssets.google_logo,
                      text: 'Google',
                      backgroundColor: AppColors.kRedColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*.293),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: AppStyles.textStyle15.copyWith(
                        color: AppColors.kGreyColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Signin',
                      style: AppStyles.textStyle15.copyWith(
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*.035,),
                const CustomAuthPurpleButton(text: 'Create an Account'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
