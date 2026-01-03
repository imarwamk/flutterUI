import 'package:etc/core/shared/widgets/custom_btn.dart';
import 'package:etc/core/utils/app_assets.dart';
import 'package:etc/core/utils/app_colors.dart';
import 'package:etc/core/utils/app_strings.dart';
import 'package:etc/core/utils/app_styles.dart';
import 'package:etc/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(AppAssets.product1, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 60,
                left: 40,
                child: Text(
                  AppStrings.onboardingTitle,
                  style: AppStyles.playfair(
                    size: 40,
                    color: AppColors.white,
                    weight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 50,
                child: Text(
                  AppStrings.onboardingSubtitle,
                  style: AppStyles.montserrat(size: 15, color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Gap(20),
          CustomBtn(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => HomeView()),
              );
            },
            text: AppStrings.getStarted,
          ),
        ],
      ),
    );
  }
}
