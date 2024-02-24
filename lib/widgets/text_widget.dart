import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  Color? color;
  final TextAlign textAlign;
  final TextDecoration?  decoration;

  TextWidget(
      {Key? key,
        required this.value,
        required this.fontSize,
        required this.fontWeight,
        this.color,
        required this.textAlign,
        this.decoration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration,
        ),

      ),
    );
  }
}
