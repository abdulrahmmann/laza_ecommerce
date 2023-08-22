
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_auth_purple_button.dart';
import 'package:laza/features/auth/ui/views/widgets/custom_circle_widget.dart';
import 'package:laza/features/auth/ui/views/widgets/user_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;

    return Column(
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
                    const UserTextField(
                      labelText: 'Username',
                      obscureTex: false,
                    ),
                    SizedBox(height: height * 0.02),
                    const UserTextField(
                      labelText: 'Password',
                      obscureTex: false,
                    ),
                    SizedBox(height: height * 0.02),
                    const UserTextField(
                      labelText: 'Email Address',
                      obscureTex: false,
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
                        color: AppColors.kBlackColor
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
        const CustomAuthPurpleButton(text: 'Sign Up'),

      ],
    );
  }
}