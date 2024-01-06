import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/utility/dimensions.dart';
import 'package:food_delivery/widgets/appColumn.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expendable_text.dart';
class PopularFood extends StatelessWidget {
   const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          // its for image.
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
           // its for icon .
           Positioned(
             top: Dimensions.height45,
             left: Dimensions.width20,
               right: Dimensions.width20,
               child: const Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                   AppIcon(icon: Icons.shopping_cart_outlined),
                 ],
               )),
          //  here is introduction and text about food//  here is expendable text and button
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(text: "Its  big Pizza",),
                      SizedBox(height: Dimensions.height10,),
                      BigText(text: "Introduce"),
                      SizedBox(height: Dimensions.height20,),
                        const Expanded(
                          child: SingleChildScrollView(
                            child: ExpendableText(text: "Pizza is an Italian food that was created in Italy "
                              "(The Naples area). It is made with different toppings."
                              " Some of the most common toppings are cheese, sausages, pepperoni,"
                              " vegetables, tomatoes, spices and herbs and basil"
                              "Pizza is an Italian food that was created in Italy "
                              "(The Naples area). It is made with different toppings."
                              " Some of the most common toppings are cheese, sausages, pepperoni,"
                              " vegetables, tomatoes, spices and herbs and basil.."),
                          ),
                        )
                    ],
                  )
              )),
          //

        ],
      ),
      // here we can make two button  and design it   ..
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeight120,
        padding: EdgeInsets.only(top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.btnBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.radius20*2),
            topLeft: Radius.circular(Dimensions.radius20*2),
          ),
        ),
        // here is two container one is -and+ And one is for Card
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  BigText(text: "0"),
                  Icon(Icons.add, color: AppColors.signColor,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
              right: Dimensions.width20),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(Dimensions.radius20),
               color: AppColors.mainColor,
             ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              ),


          ],
        ) ,
      ),

    );
  }
}
