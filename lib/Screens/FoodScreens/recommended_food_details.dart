import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
class RecommendedFood extends StatelessWidget {
  const RecommendedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          // its for image
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Text("hi its sliver Text "),
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
            child: Text(
              "Pizza is an Italian food that was created in Italy "
                "(The Naples area). It is made with different toppings."
                " Some of the most common toppings are cheese, sausages, pepperoni,"
                " vegetables, tomatoes,Pizza is an Italian food that was created in Italy "
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
            " vegetables, tomatoes, spices and herbs and basil.. spices and herbs and basil"
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
                " vegetables, tomatoes, spices and herbs and basil.."
            ),
          )
        ],

      ),
    );
  }
}
