
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/features/auth/ui/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        body: SignUpViewBody(),
      ),
    );
  }
}
