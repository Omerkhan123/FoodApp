import 'package:flutter/material.dart';
class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double height;
  double size;
  SmallText({super.key,
     this.color = const Color(0xFF332d2d),
     required this.text,
     this.height=1.2,
    this.size=12

   });

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: 12,
        height: height,
      ),
    );
  }
}
