
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
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomCircleWidgets(
                backgroundColor: AppColors.kWhiteGreyColor,
                image: AppAssets.left_arrow,
              ),
            ),
            const SizedBox(height: 15),
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
            const SizedBox(height: 75),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSocialMediaButton(
                      image: AppAssets.facebook_logo,
                      text: 'Facebook',
                      backgroundColor: AppColors.kBlueDarkColor,
                    ),
                    SizedBox(height: 10),
                    CustomSocialMediaButton(
                      image: AppAssets.twitter_logo,
                      text: 'Twitter',
                      backgroundColor: AppColors.kBlueLightColor,
                    ),
                    SizedBox(height: 10),
                    CustomSocialMediaButton(
                      image: AppAssets.google_logo,
                      text: 'Google',
                      backgroundColor: AppColors.kRedColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 224),

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
                const SizedBox(height: 25),
                const CustomAuthPurpleButton(text: 'Create an Account'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
