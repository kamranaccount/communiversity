import 'package:flutter/material.dart';

import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Texts/CustomText.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22.0))),
        child: InkWell(
          onTap: () => print("ciao"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
                child: Image.asset(
                    AssetPaths.HOME_IMAGE,
                    // width: 300,
                    height: 120,
                    fit:BoxFit.fill
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 8.0),
                child: CustomTextWidget(
                  text: AppStrings.EVENT_NAME_TEXT,
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontWeight: FontWeight.bold,
                  Text_fontSize: 0.9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
