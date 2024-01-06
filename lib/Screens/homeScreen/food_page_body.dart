import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/utility/dimensions.dart';
import 'package:food_delivery/widgets/appColumn.dart';
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

  var  _currPageValues= 0.0;
  final double _scaleFactor= 0.8;
  final _height = Dimensions.pageViewContainer;

  // this method use to check the value of index
 @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValues = pageController.page!;
          //print("the page value is" +_currPageValues.toString());
      });
    });
  }
  // this method  use for dispose the memory
  @override
  void dispose(){
    super.dispose();
   pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider  section
        Container(
          // bg color where we checking the codes
          // color: Colors.blue,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }
          ),
        ),
     // its dots section
     DotsIndicator(
    dotsCount: 5,
    position: _currPageValues.toInt(),
    decorator: DotsDecorator(
      activeColor: AppColors.mainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        // Popular Text Section
         SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular', size: Dimensions.font26,),
              SizedBox(width: Dimensions.width10,),
              Container(

                child: BigText(text: ".",color: Colors.black, size: Dimensions.font20,),
              ),
              SizedBox(width: Dimensions.width10, ),
              Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(text: "Food Pricing",
                    color: AppColors.textColor,)
              ),



            ],
          ),
        ),
        // ListView of food and images
        ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
               shrinkWrap: true,
            itemCount: 10,
              itemBuilder: (context, index){
              return Container(
                margin:EdgeInsets.only(left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    // its the image section ..
                    Container(
                      height: Dimensions.listViewSize,
                      width: Dimensions.listViewSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.blue,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:  AssetImage(
                            "assets/image/food1.jpeg",
                          ),
                        )
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimensions.lisViewContSize,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                        ),
                        // here we write a text and add icons names 
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "fruit cake with malaye",color: AppColors.textColor, size: Dimensions.font26,),
                              SizedBox(height: Dimensions.height10,),
                             // star row ..
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Wrap(
                                     children:
                                     List.generate(5, (index) => Icon(Icons.star,
                                       size: 15,
                                       color: AppColors.mainColor,))
                                 ),
                                 SmallText(text: "with finnish  test"),
                               ],
                             ),
                              SizedBox(height: Dimensions.height10,),

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
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
              }),

      ],
    );

  }

  // stack container and main items
 Widget _buildPageItem(int index){

   // dalta mai yao logic jor kry dy 6 kala page scroll k nu animation shnt ba show ky.
   // this logic use for slide the container and we wrap it with "transform widget "
   // its for scale and sliding
   Matrix4 matrix = Matrix4.identity();
   if(index==_currPageValues.floor()) {
     var currScale = 1 - (_currPageValues - index) * (1 - _scaleFactor);
     var currTrans =_height*(1-currScale)/2;
     matrix = Matrix4.diagonal3Values(1, currScale, 1) .. setTranslationRaw(0, currTrans, 0);

   } else if (index== _currPageValues.floor()+1){
     var currScale = _scaleFactor+(_currPageValues-index+1)*(1-_scaleFactor);
     var currTrans =_height*(1-currScale)/2; //1/10*220=20
     matrix = Matrix4.diagonal3Values(1, currScale, 1);
     matrix = Matrix4.diagonal3Values(1, currScale, 1) .. setTranslationRaw(0, currTrans, 0);

   }else if (index== _currPageValues.floor()-1){
     var currScale = 1 - (_currPageValues - index) * (1 - _scaleFactor);
     var currTrans =_height*(1-currScale)/2; //1/10*220=20
     matrix = Matrix4.diagonal3Values(1, currScale, 1);
     matrix = Matrix4.diagonal3Values(1, currScale, 1)
       .. setTranslationRaw(0, currTrans, 0);

   }else{
     var currScale = 0.8;
     matrix = Matrix4.diagonal3Values(1, currScale, 1)
       .. setTranslationRaw(0, _height*(1- _scaleFactor)/2, 1);

   }// its end of scaling and sliding code
    return Transform(
        transform: matrix,
      child: Stack(
        children:[
          // this is the main container
          Container(
        height: Dimensions.pageViewContainer,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: index.isEven?const Color(0xFF69c5df): Color(0xFF19c5df),
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            image: const  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/image/food9.jpeg",
              ),
            )
          ),
        ),
          // this is a small container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: 35, right: 35, bottom: 30,),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5.0,
                      offset:  Offset(0,5),
                    )
                  ],
                  borderRadius: BorderRadius.circular(Dimensions.radius20),

              ),
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: Dimensions.height15),
                child:  const AppColumn(text: 'Its big Pizza',),
              ),
            ),
          ),
        ] 
   ),
    );

 }
}
