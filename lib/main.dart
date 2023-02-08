import 'package:expense_app/screens/splash/splash_page.dart';
import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myapp',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.light,
          primarySwatch: createMaterialColor(MyColor.bgBColor),
        backgroundColor: MyColor.bgBColor,
          canvasColor: MyColor.bgWColor,
        shadowColor: MyColor.lightTextBcolor
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: createMaterialColor(MyColor.bgWColor),
            backgroundColor: MyColor.bgWColor,
        canvasColor: MyColor.bgBColor,
        shadowColor: MyColor.lightTextWcolor
      ),
      home: SplashPage(),
    );
  }
}