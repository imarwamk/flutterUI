import 'package:etc/core/utils/app_colors.dart';
import 'package:etc/core/utils/app_strings.dart';
import 'package:etc/core/utils/app_styles.dart';
import 'package:etc/features/home/view/home_view.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomBtn({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          );
  }
}