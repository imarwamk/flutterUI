import 'package:etc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String? offerText;
  final double? width;
  final double? imageHeight;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.offerText,
    this.width,
    this.imageHeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width ?? 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: imageHeight ?? 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.cardBg,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (c, o, s) => const Icon(Icons.error),
                    ),
                  ),
                ),
                if (offerText != null)
                  Positioned(
                    top: 18,
                    right: 15,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.greyText,
                      ),
                      child: CustomTexts(
                        text: offerText!,
                        size: 12,
                        color: AppColors.white,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            CustomTexts(
              text: title,
              weight: FontWeight.bold,
              size: 16,
            ),
            const SizedBox(height: 5),
            CustomTexts(
              text: price,
              weight: FontWeight.normal,
              size: 12,
              isTitle: false,
            ),
          ],
        ),
      ),
    );
  }
}