import 'package:expense_app/screens/user_onboarding/login/login_page.dart';
import 'package:expense_app/screens/user_onboarding/signup/bottom_action.dart';
import 'package:expense_app/ui/custom_widget/custom_logo_stack.dart';
import 'package:expense_app/ui/custom_widget/custom_rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../ui/custom_widget/custom_textfield.dart';
import '../../../ui/custom_widget/ui_helper.dart';

class SignupPage extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text('Signup'),
        ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height > 700
                ? mainUI(context)
                : SingleChildScrollView(
                    child: mainUI(context),
                  )
            : Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Center(
                      child: CustomLogoStack(50,Theme.of(context).backgroundColor,Theme.of(context).canvasColor),
                    ),
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.bgBColor
                        : MyColor.bgWColor,
                  )),
                  Expanded(
                      child: MediaQuery.of(context).size.height > 700
                          ? mainUI(context)
                          : SingleChildScrollView(
                              child: mainUI(context),
                            ))
                ],
              ));
  }

  Widget mainUI(context) {
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogoStack(width > 500 ? 50 : 34,Theme.of(context).backgroundColor,Theme.of(context).canvasColor),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Get Started',
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
                Text('Start managing your Expense Today!',
                    style: width > 500
                        ? mTextStyle19(
                            fontWieght: FontWeight.w300,
                            mColor: Theme.of(context).shadowColor)
                        : mTextStyle12(
                            fontWieght: FontWeight.w300,
                            mColor: Theme.of(context).shadowColor)),
                SizedBox(
                  height: 21,
                ),
                CustomTextField(
                  errorMsg: 'PLease Enter Name',
                    mcontroller: nameController,
                    hint: 'Name Here..',
                    isPassword: false,
                    micon: Icons.account_circle_outlined,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor),
                SizedBox(
                  height: 11,
                ),
                CustomTextField(
                  errorMsg:'Please Enter The Name',
                    mcontroller: emailController,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor,
                    micon: Icons.email_outlined,
                    isPassword: false,
                    hint: 'Email Here..'),
                SizedBox(
                  height: 11,
                ),
                CustomTextField(
                  errorMsg: 'Please Enter Password..',
                    mcontroller: passController,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor,
                    micon: Icons.lock_outline,
                    isPassword: true,
                    hint: 'Password Here..'),
                SizedBox(
                  height: 11,
                ),
                CustomTextField(
                  errorMsg: 'Please Enter Confirm Password..',
                    mcontroller: confirmPassController,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor,
                    micon: Icons.lock_outline,
                    isPassword: true,
                    hint: 'Confirm Password Here..'),
                SizedBox(
                  height: 25,
                ),
                CustomRoundedButton(callback: () {
                  if(_formKey.currentState!.validate()){
                   Fluttertoast.showToast(msg: 'Login Successfully');
                  }
                }, text: 'Sign-up'),
                SizedBox(
                  height: 11,
                ),
                if (constraints.maxWidth > 400)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        getChildren('Already have an Account', 'Login Now', () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }, width, context),
                  )
                else
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: getChildren(
                          'Already have an Account ', 'Login Now', () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      }, width, context))
              ],
            ),
          ),
        ),
      );
    });
  }
}
