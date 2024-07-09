import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String smallText;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.smallText,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(smallText,
        style: GoogleFonts.roboto(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.normal,
          height: height,
        ));
  }
}
