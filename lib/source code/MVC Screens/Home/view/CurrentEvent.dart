import 'package:communiversity/source%20code/Utils/App%20Assets%20Path/AssetPaths.dart';
import 'package:flutter/material.dart';

import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Texts/CustomText.dart';

class CurrentEvent extends StatelessWidget {
  const CurrentEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.32,
     width: double.infinity,
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
                    height: 180,
                    fit:BoxFit.fill
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 8.0),
                child: CustomTextWidget(
                  text: AppStrings.EVENT_NAME_TEXT,
                  Text_Color: AppColors.BLACK_COLOR,
                  Text_fontWeight: FontWeight.bold,
                  Text_fontSize: 1.3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: AppColors.PRIMARY_COLOR,),
                    CustomTextWidget(
                      text: AppStrings.EVENT_PLACE_TEXT,
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontWeight: FontWeight.bold,
                      Text_fontSize: 1.0,
                    ),
                    Icon(Icons.timer, color: AppColors.PRIMARY_COLOR,),
                    CustomTextWidget(
                      text: AppStrings.EVENT_TIME_TEXT,
                      Text_Color: AppColors.BLACK_COLOR,
                      Text_fontWeight: FontWeight.bold,
                      Text_fontSize: 1.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //   Container(
    //   height: MediaQuery.of(context).size.height * 0.35,
    //   width: double.infinity,
    //   decoration: new BoxDecoration(
    //       color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
    //       borderRadius: new BorderRadius.all(
    //             Radius.circular(20.0),
    //   ),
    // ),
    //
    // );
  }
}
