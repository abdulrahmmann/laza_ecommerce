
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'widgets/get_started_view_body.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        body: GetStartedViewBody(),
      ),
    );
  }
}
