import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Utils/App Assets Path/AssetPaths.dart';
import '../../Utils/App Colors/AppColors.dart';
import '../../Utils/App Strings/AppStrings.dart';
import '../Texts/CustomText.dart';

class CustomAppBar extends StatelessWidget {
  final String ScreenName;
  const CustomAppBar({Key? key, required this.ScreenName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          height: 130.0,
          width: double.infinity,
          decoration: new BoxDecoration(
              color: AppColors
                  .PRIMARY_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                  bottomLeft: const Radius.circular(25.0),
                  bottomRight: const Radius.circular(25.0))),
        ),
        SafeArea(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: InkWell(
                  child: Image.asset(
                    AssetPaths.BACK_ICON,
                    scale: 3.0,
                    color: AppColors.WHITE_COLOR,
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CustomTextWidget(
                  text: ScreenName,
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.7,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
