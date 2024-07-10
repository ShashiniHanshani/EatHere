import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiddleText extends StatelessWidget {
  Color textColor;
  double size;
  double height;
  final String middle_text;

  MiddleText(
      {super.key,
      this.textColor = const Color(0xFF8f837f),
      this.size = 16,
      this.height = 1.6,
      required this.middle_text});

  @override
  Widget build(BuildContext context) {
    return Text(middle_text,
        style: GoogleFonts.roboto(
          color: textColor,
          fontSize: size,
          fontWeight: FontWeight.w400,
          height: height,
        ));
  }
}
