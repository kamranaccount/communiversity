import 'package:flutter/material.dart';

import '../Texts/CustomText.dart';

class GeneralButton extends StatelessWidget {
  final String Btn_TextName;
  final Color Btn_TextColor;
  final Color Btn_Background_color;
  final String? font_weight;
  void Function()? ontapBtn;

  GeneralButton({required this.ontapBtn ,
    required this.Btn_TextName,
    required this.Btn_Background_color,
    required this.Btn_TextColor,
    this.font_weight,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapBtn,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Btn_Background_color,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: CustomTextWidget(
              text: Btn_TextName,Text_Color: Btn_TextColor, Text_fontSize: 1.3,Text_fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}