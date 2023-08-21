
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_colors.dart';
import 'package:laza/core/utils/app_styles.dart';

import 'men_women_button.dart';

class MenWomenContainer extends StatefulWidget {
  const MenWomenContainer({super.key});

  @override
  State<MenWomenContainer> createState() => _MenWomenContainerState();
}

class _MenWomenContainerState extends State<MenWomenContainer> {

  bool _isMenSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.kWhiteColor
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Look Good, Feel Good',
            style: AppStyles.textStyle25.copyWith(
                color: AppColors.kBlackColor
            ),
          ),

          const SizedBox(height: 10),
          Text(
            'Create your individual & unique style and look amazing everyday.',
            style: AppStyles.textStyle15.copyWith(
                color: AppColors.kGreyColor
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              MenWomenButton(
                backgroundColor: _isMenSelected ? AppColors.kPrimaryColor : AppColors.kWhiteGreyColor,
                textColor: _isMenSelected ? AppColors.kWhiteColor : AppColors.kGreyColor,
                text: 'Men',
                onTap: () {
                  setState(() {
                    _isMenSelected = true;
                  });
                },
              ),

              const SizedBox(width: 10),

              MenWomenButton(
                backgroundColor: _isMenSelected ? AppColors.kWhiteGreyColor : AppColors.kPrimaryColor,
                textColor: _isMenSelected ? AppColors.kGreyColor : AppColors.kWhiteColor,
                text: 'Women',
                onTap: () {
                  setState(() {
                    _isMenSelected = false;
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: 20),
          Text(
            'Skip',
            style: AppStyles.textStyle17.copyWith(
                color: AppColors.kGreyColor
            ),
          )
        ],
      ),
    );
  }
}
