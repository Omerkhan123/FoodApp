import 'package:flutter/material.dart';
import 'package:food_delivery/utility/dimensions.dart';
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow overflow;
    double size;
  BigText({super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overflow=TextOverflow.ellipsis,
    this.size=0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size==0? Dimensions.font20:size,
      ),
    );
  }
}
