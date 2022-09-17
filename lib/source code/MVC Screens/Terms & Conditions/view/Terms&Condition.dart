import 'package:flutter/material.dart';

import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/App Bar/AppBar.dart';
import '../../../Widgets/Texts/CustomText.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
        CustomAppBar(ScreenName: AppStrings.TERMS_CONDITION_TEXT),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: CustomTextWidget(
                    text: AppStrings.LOREM_TEXT,
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.2,
                  ),
                ),
              ),
            ),
          ),
       ]
        )
    );
  }
}
