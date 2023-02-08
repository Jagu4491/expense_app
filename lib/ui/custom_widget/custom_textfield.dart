import 'package:expense_app/ui/custom_widget/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  TextEditingController? mcontroller;
  Color mfillcolor;
  IconData micon;
  bool isPassword;
  String hint;
  String errorMsg;

  CustomTextField({required this.mcontroller,required this.mfillcolor,required this.micon,required this.isPassword,required this.hint,required this.errorMsg});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passVisible=false;
  @override
  Widget build(BuildContext context) {
   return widget.isPassword ? TextFormField(
     validator: (value){
       if(value == null || value.isEmpty){
         //return errorMsg;
         return 'This Field Cant be Empty !';
       }
       return null;
     },
    controller: widget.mcontroller,
     obscureText: !passVisible,
     obscuringCharacter: '*',
     cursorColor: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor,
     style: mTextStyle16(mColor: Theme.of(context).brightness == Brightness.light ? MyColor.textWColor : MyColor.textBColor),
     decoration: InputDecoration(
       hintText: widget.hint,
         prefixIcon: Icon(widget.micon),
         suffixIcon: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: IconButton(
           icon: passVisible ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),
           onPressed: (){
             passVisible = !passVisible;
             setState(() {

             });
           },
         ),
      ),
       prefixIconColor: Theme.of(context).backgroundColor,
       filled: true,
       fillColor: widget.mfillcolor,
       errorBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(21),
         borderSide: BorderSide(
           width: 1,
           color: Theme.of(context).brightness==Brightness.light ? MyColor.textBColor : MyColor.textWColor

         )
       ),
       enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(21),
           borderSide: BorderSide(
               width: 1,
               color: Theme.of(context).brightness==Brightness.light ? MyColor.textBColor : MyColor.textWColor
           )

       ),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(21),
           borderSide: BorderSide(
             width: 1,
             color: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor
           )
         )
     ),

   ) :  TextFormField(
     validator: (value){
       if(value == null || value.isEmpty){
         return 'This feild Cant be Empty !';
       }
       return null;
     },
     controller: widget.mcontroller,
     obscureText: widget.isPassword,
     obscuringCharacter: '*',
     cursorColor: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor,
     style: mTextStyle16(mColor: Theme.of(context).brightness == Brightness.light ? MyColor.textWColor : MyColor.textBColor),
     decoration: InputDecoration(
         hintText: widget.hint,

         prefixIcon: Icon(widget.micon),
         /* suffixIcon: IconButton(
         icon: Icon(Icons.visibility),
         onPressed: (){},
       ),*/
         prefixIconColor: Theme.of(context).backgroundColor,
         filled: true,
         fillColor: widget.mfillcolor,
         errorBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(21),
           borderSide: BorderSide(
             width: 1,
             color: Theme.of(context).brightness==Brightness.light ? MyColor.textBColor : MyColor.textWColor
           )
         ),
         enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(21),
             borderSide: BorderSide(
                 width: 1,
                 color: Theme.of(context).brightness==Brightness.light ? MyColor.textBColor : MyColor.textWColor
             )

         ),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(21),
             borderSide: BorderSide(
                 width: 1,
                 color: Theme.of(context).brightness==Brightness.light ? MyColor.textWColor : MyColor.textBColor
             )
         )
     ),

   );
  }
}