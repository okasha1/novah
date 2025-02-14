import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableText extends StatelessWidget {
  final double size;
  final FontWeight weight;
  final String text;
  const ReusableText(
      {super.key,
      required this.text,
      required this.size,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.normal));
  }
}
