import 'package:flutter/material.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_strings.dart';
import 'features/onboarding/view/onboarding_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.white,
        useMaterial3: true,
      ),
      home: const OnboardingView(),
    );
  }
}