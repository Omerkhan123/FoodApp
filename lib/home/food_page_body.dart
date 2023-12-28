import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        height: 350,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
          itemBuilder: (context, Postion){
           return _buildPageItem(Postion);
    }
      ),
    );
  }
 Widget _buildPageItem(int index){
    return Stack(
      children:[
        Container(
      height: 220,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: index.isEven?Color(0xFF69c5df): Color(0xFF19c5df),
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/image/food9.jpeg",
            ),
          )
        ),
      ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 30,),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
            //     image: DecorationImage(
            //       fit: BoxFit.cover,
            //       image: AssetImage(
            //         "assets/image/food3.jpeg",
            //       ),
            //     )
            ),
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "its big Pizza "),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children:
                         List.generate(5, (index) => Icon(Icons.star,
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
                  SizedBox(height: 20,),
                  const Row(
                    children: [
                      IconTextWidget(icon: Icons.ac_unit,
                          text: "Normal",
                          iconColor: AppColors.iconColor1),
                      IconTextWidget(icon: Icons.ac_unit,
                          text: "Normal",
                          iconColor: AppColors.iconColor1),
                      IconTextWidget(icon: Icons.ac_unit,
                          text: "Normal",
                          iconColor: AppColors.iconColor1),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ] 
   );
 }
}
