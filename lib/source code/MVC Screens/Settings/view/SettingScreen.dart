import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/App Bar/AppBar.dart';
import 'package:flutter/cupertino.dart';

import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Reset Password/view/ResetPassword.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
        CustomAppBar(ScreenName: AppStrings.SETTINGS_TEXT),
          Material(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 20,right: 20.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: CustomTextWidget(
                          text: AppStrings.RECEIVE_NOTIFICATION_TEXT,
                          Text_Color: AppColors.BLACK_COLOR,
                          Text_fontSize: 1.4,
                          Text_fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.20,
                        child: CupertinoSwitch(
                         value:state,
                          onChanged: (value){
                           state = value;
                            setState(() {
                            },
                            );
                          },                              thumbColor: CupertinoColors.white,
                          activeColor: CupertinoColors.activeGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                GeneralButton(
                  ontapBtn: () {
                    Get.to(ResetPassword());
                  },
                  Btn_TextName: AppStrings.CHANGE_PASSWORD_BUTTON_TEXT,
                  Btn_TextColor: AppColors.WHITE_COLOR,
                  Btn_Background_color: AppColors.PRIMARY_COLOR,
                ),
              ],
            ),
          )
    ),
   ] )
    );
  }
}
