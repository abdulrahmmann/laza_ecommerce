import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_routers.dart';
import 'package:laza/core/utils/app_styles.dart';

import 'custom_auth_purple_button.dart';
import 'custom_circle_widget.dart';
import 'custom_social_media_button.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

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
                'Let’s Get Started',
                style: AppStyles.textStyle28.copyWith(
                  color: AppColors.kBlackColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.2),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: [
                    const CustomSocialMediaButton(
                      text: 'Facebook',
                      image: AppAssets.facebook_logo,
                      backgroundColor: AppColors.kBlueDarkColor,
                    ),
                    SizedBox(height: height*.01),
                    const CustomSocialMediaButton(
                      text: 'Twitter',
                      image: AppAssets.twitter_logo,
                      backgroundColor: AppColors.kBlueLightColor,
                    ),
                    SizedBox(height: height*.01),
                    const CustomSocialMediaButton(
                      text: 'Google',
                      image: AppAssets.google_logo,
                      backgroundColor: AppColors.kRedColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: AppStyles.textStyle15.copyWith(
                  color: AppColors.kGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouters.kSignInView);
                },
                child: Text(
                  'Signin',
                  style: AppStyles.textStyle15.copyWith(
                    color: AppColors.kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.035),
        CustomAuthPurpleButton(
            text: 'Create an Account',
          onTap: () {
            GoRouter.of(context).push(AppRouters.kSignUpView);
          },
        ),
      ],
    );
  }
}
