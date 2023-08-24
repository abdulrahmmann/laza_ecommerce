

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_routers.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/data/firebase/fire_auth.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/user_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    bool inAsyncCall = false;
    String? emailAddress;
    String? password;
    FireAuth fireAuth;
    GlobalKey<FormState> formState = GlobalKey();


    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: Form(
        key: formState,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, top: 25),
                      child: CustomCircleWidgets(
                        image: 'assets/images/arrowleft.png',
                        backgroundColor: AppColors.kWhiteGreyColor,
                      ),
                    ),
                  ),

                  SizedBox(height: height*.02),
                  Text(
                    'Welcome',
                    style: AppStyles.textStyle28.copyWith(
                      color: AppColors.kBlackColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height*.007),
                  Text(
                    'Please enter your data to continue',
                    style: AppStyles.textStyle15.copyWith(
                      color: AppColors.kGreyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.15),

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        UserTextField(
                          labelText: 'Email Address',
                          obscureTex: true,
                          onChanged: (data) {
                            emailAddress = data;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter your email address';
                            }
                            if (!value.contains('@')) {
                              return 'Invalid email address format email address should contain @';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: height * 0.02),
                        UserTextField(
                          labelText: 'password',
                          obscureTex: false,
                          onChanged: (data) {
                            password = data;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter a password';
                            }
                            if (value.length <8) {
                              return 'password must be at least 8 characters';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height * 0.04),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouters.kForgotPassword);
                        },
                        child: Text(
                          'Forgot password?',
                          style: AppStyles.textStyle15.copyWith(
                            color: AppColors.kRedColor,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.025),

                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Remember me',
                          style: AppStyles.textStyle13.copyWith(
                              color: AppColors.kBlackColor,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Checkbox(
                            activeColor: AppColors.kPrimaryColor,
                            value: false,
                            onChanged: (value) {

                            }
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.12),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                        'By connecting your account confirm that you agree with our Term and Condition',
                        style: AppStyles.textStyle13.copyWith(
                            color: AppColors.kGreyColor
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                ],
              ),
            ),
            ///////////  button ///////////
            CustomAuthPurpleButton(
                text: 'Sign In',
              onTap: () async {
                  if (formState.currentState!.validate()) {
                    formState.currentState!.save();
                    setState(() {
                      inAsyncCall = true;
                    });
                    try {
                      fireAuth = FireAuth();
                      fireAuth.userSignIn(emailAddress!, password!);
                    }finally {
                      setState(() {
                        inAsyncCall = false;
                      });
                    }
                  }
              },
            ),

          ],
        ),
      ),
    );
  }
}
