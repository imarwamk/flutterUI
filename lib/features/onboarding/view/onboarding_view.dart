import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import '../../home/view/home_view.dart';

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
                  style: AppStyles.montserrat(
                    size: 15,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Gap(20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const HomeView()),
              );
            },
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  AppStrings.getStarted,
                  style: AppStyles.montserrat(
                    size: 18,
                    color: AppColors.white,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}