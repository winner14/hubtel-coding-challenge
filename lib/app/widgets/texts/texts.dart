import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubtel_assessment/app/resources/constants.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final int? maxLines;
  final TextDecoration textDecoration;
  const MyText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = AppColors.myTextColor,
    this.fontWeight,
    this.textOverflow,
    this.textAlign,
    this.textStyle,
    this.maxLines,
    this.textDecoration = TextDecoration.none,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
      ),
      overflow: textOverflow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
