

import 'package:flutter/material.dart';
import 'widgets/second_splash_view_body.dart';

class SecondSplashView extends StatelessWidget {
  const SecondSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SecondSplashViewBody(),
      ),
    );
  }
}
