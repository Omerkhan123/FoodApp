import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'food_page_body.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 40, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Finland" , color: AppColors.mainColor,),
                        Row(
                          children: [
                            SmallText(text: "Joensuu" , color: AppColors.textColor,),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white,),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),

    );
  }
}
