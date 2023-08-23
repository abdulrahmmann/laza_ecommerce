
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/features/auth/ui/views/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        body: NewPasswordViewBody(),
      ),
    );
  }
}
