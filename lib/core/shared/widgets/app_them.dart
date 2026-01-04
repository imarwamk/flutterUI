import 'package:etc/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class AppThem extends StatelessWidget {
  final Widget child;
  const AppThem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.background), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}