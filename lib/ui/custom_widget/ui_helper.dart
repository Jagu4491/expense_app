import 'package:flutter/material.dart';

class MyColor {
  //light themes colors
  static const Color bgWColor = Color(0xffffffff);
  static const Color secondaryWColor = Color(0xfff1f0f3);
  static const Color textWColor = Color(0xff2c293c);
  static const Color lightTextWcolor= Color(0xff545454);


  //dark themes colors
  static const Color bgBColor = Color(0xff2c293c);
  static const Color secondaryBColor = Color(0xffc0baba);
  static const Color textBColor = Color(0xffffffff);
  static const Color lightTextBcolor = Color(0xffcccccc);
}

   MaterialColor createMaterialColor(Color color) {

    List strengths = <double>[.05];

    Map<int, Color> swatch = {};

    final int r = color.red, g = color.green, b = color.blue;



    for (int i = 1; i < 10; i++) {

      strengths.add(0.1 * i);

    }

    for (var strength in strengths) {

      final double ds = 0.5 - strength;

      swatch[(strength * 1000).round()] = Color.fromRGBO(

        r + ((ds < 0 ? r : (255 - r)) * ds).round(),

        g + ((ds < 0 ? g : (255 - g)) * ds).round(),

        b + ((ds < 0 ? b : (255 - b)) * ds).round(),

        1,

      );

    }

    return MaterialColor(color.value, swatch);

  }

  TextStyle mTextStyle52({
  fontWeight=FontWeight.normal,
    mColor=Colors.black,
    fontStyle=FontStyle.normal,
  }){
  return TextStyle(
    fontSize: 52,
    fontWeight:fontWeight,
    fontStyle: fontStyle,
    color: mColor,
    fontFamily: 'Quicksand'
  );
}

TextStyle mTextStyle43({
  fontWieght=FontWeight.normal,
  mColor=Colors.black,
  fontStyle=FontStyle.normal
}){
  return TextStyle(
      fontSize: 43,
      fontWeight: fontWieght,
      fontStyle:fontStyle,
      color: mColor,
      fontFamily: 'Quicksand'
  );
}

TextStyle mTextStyle26({
  fontWieght=FontWeight.normal,
  mColor=Colors.black,
  fontStyle=FontStyle.normal
}){
return TextStyle(
  fontSize: 26,
  fontWeight: fontWieght,
  fontStyle:fontStyle,
  color: mColor,
  fontFamily: 'Quicksand'
);
}

TextStyle mTextStyle19({
  fontWieght=FontWeight.normal,
  mColor=Colors.black,
  fontStyle=FontStyle.normal
}){
  return TextStyle(
    fontSize: 19,
    fontWeight: fontWieght,
    fontStyle: fontStyle,
    color: mColor,
    fontFamily: 'Quicksand'
  );
}

TextStyle mTextStyle16({
  fontWieght=FontWeight.normal,
mColor=Colors.black,
fontStyle=FontStyle.normal
}){
  return TextStyle(
    fontSize: 16,
    fontWeight: fontWieght,
    fontStyle: fontStyle,
    color: mColor,
    fontFamily: 'Quicksand'
  );
}

TextStyle mTextStyle12({
  fontWieght=FontWeight.normal,
  mColor=Colors.black,
  fontStyle=FontStyle.normal
}){
  return TextStyle(
    fontSize: 12,
      fontWeight: fontWieght,
      fontStyle: fontStyle,
      color: mColor,
      fontFamily: 'Quicksand'
  );
}


