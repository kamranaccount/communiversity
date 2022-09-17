import 'package:communiversity/source%20code/MVC%20Screens/Login/view/LoginScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/OTP%20Verification/view/OTPScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Sign%20Up/view/SignUpScreen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/App Bar/AppBar.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Text Editing Controllers/TextEditing_Controllers.dart';
import '../../../Widgets/TextFields/Text_Field.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Forgot Password/view/ForgotScreen.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController = Get.put(AppEditingControllers());
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(ScreenName: AppStrings.CHANGE_PASSWORD_TEXT),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ///////////////////////////// CURRENT_PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        // Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.WHITE_COLOR,
                        Field_Icon: Icon(Icons.lock),
                        Obscure_Text: _isHidden,
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.CURRENT_PASSWORD_HINT_TEXT,
                        EyesuffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.LIGHT_GREY_COLOR,
                            )),
                      ),
                      ///////////////////////////// NEW_PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                       // Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.WHITE_COLOR,
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
                    //    Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.WHITE_COLOR,
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
                      SizedBox(height: 300.0,),
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
