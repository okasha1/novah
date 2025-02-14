import 'package:flutter/material.dart';

class MediumContainer extends StatelessWidget {
  final String bgImage;
  final String text;
  const MediumContainer({super.key, required this.bgImage, required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.35,
      width: width * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: NetworkImage(bgImage), fit: BoxFit.cover)),
      child: Text(text),
    );
  }
}
