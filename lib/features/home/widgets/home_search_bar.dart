import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      hintText: AppStrings.searchHint,
      trailing: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            LucideIcons.scanLine,
            color: AppColors.primary,
          ),
        ),
      ],
      backgroundColor: MaterialStateProperty.all(AppColors.searchBarBg),
      elevation: MaterialStateProperty.all(0),
      side: MaterialStateProperty.all(
        const BorderSide(color: AppColors.searchBarBorder, width: 1.5),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}