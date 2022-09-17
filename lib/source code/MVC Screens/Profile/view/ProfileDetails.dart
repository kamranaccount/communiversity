import 'package:flutter/material.dart';

import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Texts/CustomText.dart';
class UserDetails extends StatelessWidget {
  final String TopLabel, BottomLabel;
  const UserDetails({Key? key, required this.TopLabel, required this.BottomLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 10.0,bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              text: TopLabel,
              Text_Color: AppColors.BLACK_COLOR,
              Text_fontWeight: FontWeight.bold,
              Text_fontSize: 1.6,
            ),
            CustomTextWidget(
              text: BottomLabel,
              Text_Color: AppColors.BLACK_COLOR,
              Text_fontSize: 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
