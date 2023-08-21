

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza/core/utils/app_assets.dart';
import 'package:laza/core/utils/app_routers.dart';

class FirstSplashViewBody extends StatefulWidget {
  const FirstSplashViewBody({super.key});

  @override
  State<FirstSplashViewBody> createState() => _FirstSplashViewBodyState();
}

class _FirstSplashViewBodyState extends State<FirstSplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateView();
  }

  void navigateView() {
    Future.delayed(
      const Duration(microseconds: 900),
      () => GoRouter.of(context).push(AppRouters.kSecondSplashView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppAssets.logo)
    );
  }
}
