import 'package:expense_app/screens/user_onboarding/login/login_page.dart';
import 'package:expense_app/ui/custom_widget/custom_logo_stack.dart';
import 'package:expense_app/ui/custom_widget/custom_rounded_btn.dart';
import 'package:expense_app/ui/custom_widget/custom_textfield.dart';
import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ForgotPassPage();
}

class _ForgotPassPage extends State<ForgotPassPage> {

  var userNameController=TextEditingController();
  var passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: MediaQuery.of(context).size.height > 500 ? mainUI():SingleChildScrollView(
        child: mainUI(),
      ),
    );
  }

  Widget mainUI() {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogoStack(
                width > 500 ? 50 : 34,
                Theme.of(context).backgroundColor,
                Theme.of(context).canvasColor),
            SizedBox(
              height: 21,
            ),
            Text(
              'Forgot Password',
              style: width > 500
                  ? mTextStyle43(
                      fontWieght: FontWeight.bold,
                      mColor: Theme.of(context).canvasColor)
                  : mTextStyle26(
                      fontWieght: FontWeight.bold,
                      mColor: Theme.of(context).canvasColor),
            ),
            SizedBox(
              height: 11,
            ),
            Text('No Worries,We\'ll send Yor Reset Instruactions.',
                style:width > 500 ? mTextStyle19(
                  fontWieght: FontWeight.w300,
                  mColor: Theme.of(context).shadowColor)
                    : mTextStyle12(
                  fontWieght: FontWeight.w300,
                  mColor: Theme.of(context).shadowColor
                )

              ),
            SizedBox(height: 21,),
            CustomTextField(
                mcontroller:userNameController ,
                mfillcolor: Theme.of(context).brightness==Brightness.light ? MyColor.secondaryWColor : MyColor.secondaryBColor,
                micon: Icons.email_outlined,
                isPassword: false,
                hint:'Enter Email' ,
                errorMsg: ''
            ),
            SizedBox(
              height: 11,
            ),
            CustomTextField(
                mcontroller: passController,
                mfillcolor: Theme.of(context).brightness==Brightness.light ? MyColor.secondaryWColor : MyColor.secondaryBColor,
                micon: Icons.lock_outline,
                isPassword: true,
                hint: 'Enter Password',
                errorMsg: ''
            ),
            SizedBox(height: 25,),
            CustomRoundedButton(callback: (){}, text: 'Reset Password'),
            SizedBox(height: 11,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_outlined,
                  color: Theme.of(context).brightness==Brightness.light ? MyColor.textBColor : MyColor.textWColor,
                  size: width>500 ? 25:18,
                ),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child: Text('Back to Login',style:width > 500 ? mTextStyle19(
                    fontWieght: FontWeight.bold,
                    mColor: Theme.of(context).shadowColor)
                    : mTextStyle12(
                    fontWieght: FontWeight.bold,
                    mColor: Theme.of(context).shadowColor
                )))
              ],
            )




          ],
        ),
      ),
    );
  }
}
