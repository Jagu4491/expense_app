import 'package:expense_app/screens/user_onboarding/forgotpassword/forgotpass_page.dart';
import 'package:expense_app/screens/user_onboarding/signup/bottom_action.dart';
import 'package:expense_app/screens/user_onboarding/signup/signup_page.dart';
import 'package:expense_app/ui/custom_widget/custom_logo_stack.dart';
import 'package:expense_app/ui/custom_widget/custom_rounded_btn.dart';
import 'package:expense_app/ui/custom_widget/custom_textfield.dart';
import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameController = TextEditingController();
  var passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height > 500
                ? mainUI()
                : SingleChildScrollView(
                    child: mainUI(),
                  )
            : Row(
                children: [
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.bgBColor
                        : MyColor.bgWColor,
                    child: Center(
                        child: CustomLogoStack(
                            50,
                            Theme.of(context).backgroundColor,
                            Theme.of(context).canvasColor)),
                  )),
                  Expanded(
                      child: MediaQuery.of(context).size.height > 500
                          ? mainUI()
                          : SingleChildScrollView(
                              child: mainUI(),
                            ))
                ],
              ));
  }

  Widget mainUI() {
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) => Center(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Form(
            key: _formKey,
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
                  'Hello,Again',
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
                Text(
                  'Welcome Back,you\'ve been miseed',
                  style: width > 500
                      ? mTextStyle19(
                          fontWieght: FontWeight.w300,
                          mColor: Theme.of(context).shadowColor)
                      : mTextStyle12(
                          fontWieght: FontWeight.w300,
                          mColor: Theme.of(context).shadowColor),
                ),
                SizedBox(
                  height: 21,
                ),

                ////////////////Uname and Password Textfield//////////////////////
                CustomTextField(
                    errorMsg: 'Please Enter Email..',
                    mcontroller: userNameController,
                    hint: 'Email Here..',
                    isPassword: false,
                    micon: Icons.email_outlined,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor),
                SizedBox(
                  height: 11,
                ),
                CustomTextField(
                    errorMsg: 'Please Enter Password',
                    mcontroller: passController,
                    hint: 'Password Here..',
                    isPassword: true,
                    micon: Icons.lock_outline,
                    mfillcolor: Theme.of(context).brightness == Brightness.light
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor),
                SizedBox(
                  height: 11,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgotPassPage()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: width > 500
                            ? mTextStyle16(
                                fontWieght: FontWeight.w300,
                                mColor: Theme.of(context).shadowColor)
                            : mTextStyle12(
                                fontWieght: FontWeight.w300,
                                mColor: Theme.of(context).shadowColor),
                      ))
                ]),
                SizedBox(
                  height: 25,
                ),
                CustomRoundedButton(
                    callback: () {
                      if (_formKey.currentState!.validate()) {
                        Fluttertoast.showToast(msg: 'Login Successfully');
                        /* ScaffoldMessenger.of(context).showSnackBar(const
                        SnackBar(content: Text('Processing Data'))
                     );*/
                      }
                    },
                    text: 'Login'),
                SizedBox(
                  height: 11,
                ),
                constraints.maxWidth > 400
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: getChildren(
                            'Create a New Account', 'Sign-Up Now ', () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        }, constraints.maxWidth, context),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: getChildren(
                            'Create a New Account', 'Sign-up Now', () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        }, width, context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
