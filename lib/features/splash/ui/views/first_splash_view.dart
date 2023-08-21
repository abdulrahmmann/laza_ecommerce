
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'widgets/first_splash_view_body.dart';

class FirstSplashView extends StatelessWidget {
  const FirstSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kPrimaryColor,
        body: FirstSplashViewBody(),
      ),
    );
  }
}
