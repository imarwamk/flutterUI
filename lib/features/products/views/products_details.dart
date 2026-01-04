import 'dart:ui';
import 'package:etc/core/shared/widgets/app_them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/shared/widgets/custom_text.dart';
import '../../../core/utils/app_colors.dart';

class ProductsDetails extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final String? offerText;

  const ProductsDetails({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.offerText,
  });

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppThem(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: widget.imagePath,
                      child: Image.asset(
                        widget.imagePath,
                        width: double.infinity,
                        height: 600,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: CircleAvatar(
                          backgroundColor: AppColors.circleAvatar,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 800),
              tween: Tween(begin: 0, end: 1.0),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(0, 1000 * (1 - value)),
                  child: child,
                );
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 130),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(24),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              height: 310,
                              width: 370,
                              color: Colors.black.withOpacity(0.3),
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomTexts(
                                    text: widget.title,
                                    size: 24,
                                    weight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(height: 6),
                                  CustomTexts(
                                    text: widget.price,
                                    size: 18,
                                    color: AppColors.white,
                                  ),
                                  if (widget.offerText != null) ...[
                                    const SizedBox(height: 6),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.greyText,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: CustomTexts(
                                        text: widget.offerText!,
                                        size: 14,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
