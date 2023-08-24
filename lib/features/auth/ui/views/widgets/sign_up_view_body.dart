
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/data/firebase/fire_auth.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/user_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;

    GlobalKey<FormState> formState = GlobalKey();

    String? emailAddress;
    String? password;
    String? userName;
    FireAuth fireAuth;
    bool inAsyncCall = false;

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
                    'Sign Up',
                    style: AppStyles.textStyle28.copyWith(
                      color: AppColors.kBlackColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.15),

                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [

                        UserTextField(
                          labelText: 'Username',
                          obscureTex: false,
                          onChanged: (data) {
                            userName = data;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter user name';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: height * 0.02),

                        UserTextField(
                            labelText: 'Email Address',
                            obscureTex: false,
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
                            }
                        ),

                        SizedBox(height: height * 0.02),

                        UserTextField(
                            labelText: 'Password',
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
                            }
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height * 0.04),

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
                ],
              ),
            ),

            ///////////  button ///////////
            CustomAuthPurpleButton(
                text: 'Sign Up',
              onTap: () async {
                  if (formState.currentState!.validate()) {
                    formState.currentState!.save();
                    setState(() {
                      inAsyncCall = true;
                    });
                    try {
                      fireAuth = FireAuth();
                      fireAuth.userSignUp(emailAddress!, password!);
                    }finally {
                      setState(() {
                        inAsyncCall = false;
                      });
                    }
                  }else {}
              },
            ),

          ],
        ),
      ),
    );
  }
}