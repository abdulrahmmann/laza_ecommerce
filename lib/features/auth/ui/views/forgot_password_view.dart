
import 'package:flutter/material.dart';
import 'package:laza/features/auth/ui/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ForgotPasswordViewBody(),
      ),
    );
  }
}
