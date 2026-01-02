import 'package:etc/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:etc/core/shared/widgets/custom_text.dart';
import 'package:etc/core/shared/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../data/home_data.dart';
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
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const Gap(20),
                const CustomTexts(
                  text: AppStrings.appName,
                  size: 32,
                  isTitle: true,
                ),
                const CustomTexts(
                  text: AppStrings.welcomeBack,
                  size: 18,
                  color: AppColors.greyText,
                ),
                const Gap(20),
                const HomeSearchBar(),
                const Gap(20),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: HomeData.categories.length,
                    separatorBuilder: (context, index) => const Gap(25),
                    itemBuilder: (context, index) {
                      final isFirst = index == 0;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            HomeData.categories[index],
                            style: TextStyle(
                              color: isFirst
                                  ? AppColors.primary
                                  : AppColors.greyText,
                              fontWeight: isFirst
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 18,
                            ),
                          ),
                          if (isFirst)
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: 3,
                              width: 25,
                              color: AppColors.primary,
                            ),
                        ],
                      );
                    },
                  ),
                ),
                const Gap(25),
                MasonryGridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  itemCount: HomeData.products.length,
                  itemBuilder: (context, index) {
                    final product = HomeData.products[index];
                    return ProductCard(
                      imagePath: product['imagePath'],
                      title: product['title'],
                      price: product['price'],
                      offerText: product['offerText'],
                      imageHeight: product['height'],
                    );
                  },
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
