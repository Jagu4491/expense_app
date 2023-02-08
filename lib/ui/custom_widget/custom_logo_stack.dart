import 'package:flutter/material.dart';

class CustomLogoStack extends StatelessWidget{
  double mSize;
  Color mBgColor;
  Color mIconColor;

  CustomLogoStack(this.mSize,this.mBgColor,this.mIconColor);

  @override
  Widget build(BuildContext context) {
 return
     Center(
       child: CircleAvatar(
         backgroundColor: Theme.of(context).canvasColor,
         radius: mSize,
         child:   Center(child: ImageIcon(AssetImage('assets/images/expenses2.png'),size: mSize,color: Theme.of(context).backgroundColor,)),
       ),

 );
  }


}