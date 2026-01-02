import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTexts extends StatelessWidget {
  const CustomTexts({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
    this.textAlign,
    this.isTitle = false, 
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final bool isTitle; 

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      textAlign: textAlign ?? TextAlign.left,
      overflow: TextOverflow.ellipsis,
      textScaler: const TextScaler.linear(1.0),
      style: isTitle
          ? GoogleFonts.playfairDisplay( 
              color: color,
              fontSize: size,
              fontWeight: weight,
            )
          : GoogleFonts.montserrat( 
              color: color,
              fontSize: size,
              fontWeight: weight,
            ),
    );
  }
}