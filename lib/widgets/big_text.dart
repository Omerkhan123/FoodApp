import 'package:flutter/material.dart';
class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  TextOverflow overflow;
  BigText({super.key,
    this.color = const Color(0xFF332d2d),
    required this.text,

    this.overflow=TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: 30,
      ),
    );
  }
}
