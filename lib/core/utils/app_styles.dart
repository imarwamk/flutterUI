import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle playfair({
    required double size,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.playfairDisplay(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }

  static TextStyle montserrat({
    required double size,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }
}