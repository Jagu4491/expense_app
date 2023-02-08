import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget{

  VoidCallback callback;
  String text;

  CustomRoundedButton({required this.callback,required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50, //MediaQuery.of(context).size.height*0.1,
      width: 200,
      child: ElevatedButton(onPressed: callback, child: Text(text,style: mTextStyle16(mColor: Theme.of(context).backgroundColor,fontWieght: FontWeight.bold),),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).brightness==Brightness.light ? MyColor.secondaryWColor : MyColor.secondaryBColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21),

        )
      ),
      ),
    );
  }

}