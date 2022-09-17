import 'package:flutter/material.dart';

import '../../Utils/App Colors/AppColors.dart';

class CustomTextWidget extends StatelessWidget {
  final String? text;
  final Color? Text_Color;
  final double? Text_fontSize;
  final FontWeight? Text_fontWeight;
  final TextAlign? Text_Align;
  final TextDecoration? Text_Decoration;
  final Widget? child;

  const CustomTextWidget(
      {this.text,
        this.child,
        this.Text_Color,
        this.Text_fontSize,
        this.Text_fontWeight,
        this.Text_Align,
        this.Text_Decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
        color: Text_Color ?? AppColors.WHITE_COLOR,
        fontWeight: Text_fontWeight ?? FontWeight.w400,
        decoration: Text_Decoration ?? TextDecoration.none,
      ),
      textScaleFactor: Text_fontSize ?? 1.1,
      textAlign: Text_Align ?? TextAlign.justify,
    );
  }
}
