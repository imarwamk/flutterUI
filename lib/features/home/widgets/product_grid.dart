import 'package:etc/core/shared/widgets/product_card.dart';
import 'package:etc/features/products/views/products_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../data/home_data.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductsDetails(
                  imagePath: product['imagePath'],
                  title: product['title'],
                  price: product['price'],
                  offerText: product['offerText'],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
