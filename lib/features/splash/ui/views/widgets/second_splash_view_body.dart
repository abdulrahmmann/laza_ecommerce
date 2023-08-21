
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';

class SecondSplashViewBody extends StatelessWidget {
  const SecondSplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.fashion_model,
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
      ],
    );
  }
}

