
import 'package:flutter/material.dart';
import 'package:laza/features/auth/ui/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignInViewBody(),
      ),
    );
  }
}
