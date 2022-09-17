import 'package:communiversity/source%20code/MVC%20Screens/Login/view/LoginScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/OTP%20Verification/view/OTPScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Sign%20Up/view/SignUpScreen.dart';
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
import '../../Forgot Password/view/ForgotScreen.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController = Get.put(AppEditingControllers());
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(AssetPaths.RESET_PASSWORD_IMAGE),
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
                          Get.to(OTPScreen());
                        },
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CustomTextWidget(
                        text: AppStrings.RESET_PASSWORD_TEXT,
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
                      ///////////////////////////// NEW_PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.lock),
                        Obscure_Text: _isHidden,
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.NEW_PASSWORD_HINT_TEXT,
                        EyesuffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.LIGHT_GREY_COLOR,
                            )),
                      ),
                      ///////////////////////////// CONFIRM_PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.lock),
                        Obscure_Text: _isHidden,
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
                        EyesuffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.LIGHT_GREY_COLOR,
                            )),
                      ),
                      ///////////////////////////// CHANGE_PASSWORD_BUTTON //////////////////////////
                      SizedBox(height: 60.0,),
                      GeneralButton(
                          ontapBtn: () {
                            Get.to(LoginScreen());
                          },
                          Btn_TextName: AppStrings.CHANGE_PASSWORD_BUTTON_TEXT,
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
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
