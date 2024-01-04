import 'package:flutter/material.dart';
import 'package:food_delivery/utility/dimensions.dart';
class PopularFood extends StatelessWidget {
   const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
               Positioned(
                  left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodSize,
         decoration: const BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage ("assets/image/food8.jpeg"),

           )
         ) ,
                ),
              ),
        ],
      ),
    );
  }
}
