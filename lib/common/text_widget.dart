
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const TextWidget({Key? key, required this.text, required this.color, required this.fontSize,  this.fontWeight, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign:textAlign,
      text,style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Avenir',
      fontWeight: fontWeight,

    ),);
  }
}