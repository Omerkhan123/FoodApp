import 'package:dots_indicator/dots_indicator.dart';
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

  var  _currPageValues= 0.0;
  final double _scaleFactor= 0.8;
  final _height = 220;

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
        Container(
          // bg color where we checking the codes
          // color: Colors.blue,
          height: 350,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, postion){
                return _buildPageItem(postion);
              }
          ),
        ),
     DotsIndicator(
    dotsCount: 5,
    position: _currPageValues.toInt(),
    decorator: DotsDecorator(
      activeColor: AppColors.mainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    )]);
  }
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
        height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: index.isEven?Color(0xFF69c5df): Color(0xFF19c5df),
            borderRadius: BorderRadius.circular(30),
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
              height: 150,
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
                  borderRadius: BorderRadius.circular(20),

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
                        // here we use wrap where we take more icon in a row
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
                    //
                    const Row(
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
          ),
        ] 
   ),
    );
 }
}
