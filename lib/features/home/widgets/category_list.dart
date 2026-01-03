import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/utils/app_colors.dart';
import '../data/home_data.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  color: isFirst ? AppColors.primary : AppColors.greyText,
                  fontWeight: isFirst ? FontWeight.bold : FontWeight.normal,
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
    );
  }
}