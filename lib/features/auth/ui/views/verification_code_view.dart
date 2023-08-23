
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/features/auth/ui/views/widgets/verification_code_view_body.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        body: VerificationCodeViewBody(),
      ),
    );
  }
}
