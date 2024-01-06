import 'package:flutter/material.dart';
import 'package:food_delivery/color_widget.dart';
import 'package:food_delivery/utility/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpendableText extends StatefulWidget {
  final String text;
    const ExpendableText({super.key, required this.text});

  @override
  State<ExpendableText> createState() => _ExpendableTextState();
}

class _ExpendableTextState extends State<ExpendableText> {
  late String firstHalf;
  late  String secondHalf;
       bool hiddenText =  true;
  double textHeight = Dimensions.screenHeight/5.5 ;
  // if text ( i love flutter and coding of it ) more 30 or go long
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length>textHeight){
      // it will take first text and length
      firstHalf = widget.text.substring(0, textHeight.toInt());
      // it will take a remaining text which is hidden text or show to hidden text
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);

    } else
      {
        firstHalf= widget.text;
        secondHalf= "";
      }
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: secondHalf.isEmpty?SmallText(size: Dimensions.font16, text: firstHalf):Column(
        children: [
          SmallText(color: AppColors.paraColor, size: Dimensions.font16, text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),

          InkWell(
            onTap: (){
          setState(() {
            // print("hi i am here");
            hiddenText=!hiddenText;
          });
            },
            child:
            Row(
              children: [
                SmallText(text: "Show More", color: AppColors.mainColor,),
                 Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,
                  color:AppColors.mainColor,),
              ],

            ),
          )
        ],
      ),
    );
  }
}
