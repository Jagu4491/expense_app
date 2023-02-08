import 'dart:async';

import 'package:expense_app/screens/user_onboarding/login/login_page.dart';
import 'package:expense_app/ui/custom_widget/custom_logo_stack.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState()=>_SplashPageState();

}
class _SplashPageState extends State<SplashPage>{

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:CustomLogoStack(50,Theme.of(context).backgroundColor,Theme.of(context).canvasColor),
    );
  }

}