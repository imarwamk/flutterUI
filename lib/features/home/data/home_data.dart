import '../../../core/utils/app_assets.dart';

class HomeData {
  static const List<String> categories = [
    "All",
    "Facial",
    "Body Lotions",
    "Hair Products",
  ];

  static const List<Map<String, dynamic>> products = [
    {
      'imagePath': AppAssets.product2,
      'title': 'Night-Time Revival',
      'price': 'NGN 65,000',
      'offerText': '20% Off',
      'height': 200.0,
    },
    {
      'imagePath': AppAssets.product3,
      'title': 'Blushora Skin Lotion',
      'price': 'NGN 65,000',
      'offerText': '25% Off',
      'height': 280.0,
    },
    {
      'imagePath': AppAssets.product4,
      'title': 'Lakme Absolute Infinity Cream',
      'price': 'NGN 120,000',
      'offerText': '8% Off',
      'height': 300.0,
    },
    {
      'imagePath': AppAssets.product5,
      'title': 'Vitamin C Serum',
      'price': 'NGN 40,000',
      'offerText': '16% Off',
      'height': 200.0,
    },
  ];
}