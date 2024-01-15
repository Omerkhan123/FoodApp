import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/utility/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expendable_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          // its for image
          SliverAppBar(
            toolbarHeight: 65,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                  width: double.maxFinite,
                child: Center(child: BigText( size: Dimensions.font26, text:"hi its sliver Text ",)),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20), )
                ),
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food3.jpeg",
              width: double.maxFinite,
              fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: Dimensions.width20, left: Dimensions.width20),
                  child: const ExpendableText(text: "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with differentPizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with differentPizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil"
                      "Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different toppings."
                      " Some of the most common toppings are cheese, sausages, pepperoni,"
                      " vegetables, tomatoes, spices and herbs and basil..Pizza is an Italian food that was created in Italy "
                      "(The Naples area). It is made with different", )
                ),
              ],
            ),
          )
        ],

      ),
      bottomNavigationBar:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(

            padding:  EdgeInsets.only(left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                     AppIcon(
             iconSize: Dimensions.iconSize24  ,
               iconColor: Colors.white,
               bgColor: AppColors.mainColor,
               icon:Icons.remove),
                     BigText(text: "\$12.00 "+ " X "+" 0 ", size: Dimensions.font26,),
                     AppIcon(
               iconSize: Dimensions.iconSize24,
               iconColor: Colors.white,
               bgColor: AppColors.mainColor,
               icon:Icons.add),


                    ],
                  ),
          ),
          Container(
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
                  child: const Icon(Icons.favorite, color: AppColors.mainColor,)
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
        ],
      ),
    );
  }
}
