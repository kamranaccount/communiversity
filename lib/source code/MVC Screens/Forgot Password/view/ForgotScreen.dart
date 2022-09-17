import 'package:communiversity/source%20code/MVC%20Screens/Login/view/LoginScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/OTP%20Verification/view/OTPScreen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Text Editing Controllers/TextEditing_Controllers.dart';
import '../../../Widgets/TextFields/Text_Field.dart';
import '../../../Widgets/Texts/CustomText.dart';

class ForgotScreen extends StatefulWidget {
  ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController = Get.put(AppEditingControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(AssetPaths.FORGOT_PASSWORD_IMAGE),
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
                        ),
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child:  CustomTextWidget(
                        text: AppStrings.FORGOT_PASSWORD_TEXT,
                        Text_Color: AppColors.BLACK_COLOR,
                        Text_fontWeight: FontWeight.bold,
                        Text_fontSize: 1.6,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ///////////////////////////// EMAIL_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.LOGIN_EMAIL,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.email),
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.EMAIL_HINT_TEXT,
                      ),
                      SizedBox(height: 30.0,),
                      ///////////////////////////// SEND_CODE_BUTTON //////////////////////////
                      GeneralButton(
                            ontapBtn: () {
                              Get.to(OTPScreen());
                            },
                            Btn_TextName: AppStrings.SEND_CODE_TEXT,
                            Btn_TextColor: AppColors.WHITE_COLOR,
                            Btn_Background_color: AppColors.PRIMARY_COLOR,
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
