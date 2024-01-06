import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/utility/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            // here we use wrap where we take more icon in a row
            Wrap(
                children:
                List.generate(5, (index) => const Icon(Icons.star,
                  size: 15,
                  color: AppColors.mainColor,))
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "102"),
            SizedBox(width: 10,),
            SmallText(text: "Comments"),

          ],
        ),
        SizedBox(height: Dimensions.height20,),
        //
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            SizedBox(width: 5,),
            IconTextWidget(icon: Icons.location_on,
                text: "1.3 Km",
                iconColor: AppColors.mainColor),
            SizedBox(width: 5,),
            IconTextWidget(icon: Icons.timer_sharp,
                text: "3min",
                iconColor: AppColors.iconColor2),

          ],
        )
      ],
    );
  }
}
