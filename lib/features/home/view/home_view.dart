import 'package:etc/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:etc/core/shared/widgets/custom_text.dart';
import 'package:etc/features/home/widgets/category_list.dart';
import 'package:etc/features/home/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../widgets/home_search_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // extendBody: true,

      // body: SafeArea(
      //   bottom: false,
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 18),
      //       child: Column(
      //         children: [
      //           const Gap(20),
      //           const CustomTexts(
      //             text: AppStrings.appName,
      //             size: 32,
      //             isTitle: true,
      //           ),
      //           const CustomTexts(
      //             text: AppStrings.welcomeBack,
      //             size: 18,
      //             color: AppColors.greyText,
      //           ),
      //           const Gap(20),
      //           const HomeSearchBar(),
      //           const Gap(20),
      //           CategoryList(),
      //           const Gap(25),
      //           ProductGrid(),
      //           const Gap(20),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: CustomBottomNavBar(
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),

    );
  }
}
