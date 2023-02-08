import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/material.dart';

List<Widget> getChildren(title,subtitle,action,width,context){
    return[
    Text(
        title,
      style: width> 500 ? mTextStyle19(
fontWieght: FontWeight.w300,
        mColor:Theme.of(context).shadowColor) :mTextStyle12(
        fontWieght: FontWeight.w300,
        mColor: Theme.of(context).shadowColor)
      ),
  TextButton(onPressed: action, child: Text(
subtitle,style: width>500 ? mTextStyle19(
fontWieght: FontWeight.w300,
    mColor: Theme.of(context).shadowColor) : mTextStyle12(
    fontWieght: FontWeight.w300,
    mColor: Theme.of(context).shadowColor
  )
  ))


    ];
}