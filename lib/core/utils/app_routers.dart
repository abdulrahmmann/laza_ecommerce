
import 'package:go_router/go_router.dart';
import 'package:laza/features/auth/ui/views/forgot_password_view.dart';
import 'package:laza/features/auth/ui/views/get_started_view.dart';
import 'package:laza/features/auth/ui/views/sign_in_view.dart';
import 'package:laza/features/auth/ui/views/sign_up_view.dart';
import 'package:laza/features/auth/ui/views/verification_code_view.dart';
import 'package:laza/features/splash/ui/views/second_splash_view.dart';

class AppRouters {

  static const kSecondSplashView = '/secondSplashView';
  static const kGetStartedView = '/getStartedView';
  static const kSignUpView = '/signUpView';
  static const kSignInView = '/signIpView';
  static const kForgotPassword = '/forgotPassword';
  static const kVerificationCodeView = '/verificationCodeView';
  static const kNewPasswordView = '/newPasswordView';

  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const VerificationCodeView(), // FirstSplashView
      ),
      GoRoute(
        path: kSecondSplashView,
        builder: (context, state) => const SecondSplashView(),
      ),
      GoRoute(
        path: kGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kForgotPassword,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kVerificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),
      ],
  );
}