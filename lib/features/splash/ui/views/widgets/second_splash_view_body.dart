
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'men_women_container.dart';

class SecondSplashViewBody extends StatelessWidget {
  const SecondSplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            AppAssets.fashion_model,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover
        ),
        const Positioned(
          bottom: 15,
            right: 15,
            left: 15,
            child: MenWomenContainer()
        ),
      ],
    );
  }
}