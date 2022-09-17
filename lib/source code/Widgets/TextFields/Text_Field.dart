
import 'package:flutter/material.dart';

import '../../Utils/App Colors/AppColors.dart';

class CustomTextField extends StatelessWidget {
  final String? field_Hint_Text;
  final String? field_label_Text;
  final Color? field_BgColor;
  final  Field_Icon;
  final Keyboard_Type;
  final EyesuffixIcon;


  final TextEditingController? Field_controller;
  bool? Obscure_Text = false;

  CustomTextField(
      {this.field_Hint_Text,
        this.field_BgColor,
       this.field_label_Text,
        this.Field_controller,
        this.Obscure_Text = false,
        this.Keyboard_Type,
        this.Field_Icon,
        this.EyesuffixIcon,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0,bottom: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: field_BgColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: TextField(
            obscureText: Obscure_Text!,
            controller: Field_controller,
            keyboardType: Keyboard_Type,
            style: TextStyle(fontSize: 18.0, color: AppColors.BLACK_COLOR),
            decoration: InputDecoration(
              suffixIcon: EyesuffixIcon,
              icon: Field_Icon,
              border: InputBorder.none,
              labelText: field_label_Text,
              labelStyle:
              TextStyle(color: AppColors.GREY_COLOR, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
