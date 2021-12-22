import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomText extends StatelessWidget {
  final String text;
  final double font_size;
  final Color? color;
  final FontWeight? font_weight;
  const MyCustomText(
      {Key? key,
      required this.text,
      this.font_size = 20,
      this.color,
      this.font_weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.carterOne(
            textStyle: TextStyle(
                fontSize: font_size,
                color: color ?? Colors.white,
                fontWeight: font_weight)));
  }
}
