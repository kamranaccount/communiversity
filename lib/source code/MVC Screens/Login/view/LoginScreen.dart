import 'package:communiversity/source%20code/MVC%20Screens/Sign%20Up/view/SignUpScreen.dart';
import 'package:communiversity/source%20code/Widgets/Bottom%20Navigation/NavigationBar.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Drawer/DrawerPage.dart';
import '../../../Widgets/Text Editing Controllers/TextEditing_Controllers.dart';
import '../../../Widgets/TextFields/Text_Field.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Forgot Password/view/ForgotScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                child: Image.asset(AssetPaths.LOGIN_IMAGE),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: CustomTextWidget(
                    text: AppStrings.LOGIN_TEXT,
                    Text_Color: AppColors.BLACK_COLOR,
                    Text_fontSize: 1.8,
                    Text_fontWeight: FontWeight.bold,
                  ),
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
                      ///////////////////////////// PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.LOGIN_PASSWORD,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.lock),
                        Obscure_Text: _isHidden,
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.PASSWORD_HINT_TEXT,
                        EyesuffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.LIGHT_GREY_COLOR,
                            )),
                      ),
                      ///////////////////////////// FORGOT_PASSWORD_TEXT_FIELDS //////////////////////////
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: FlatButton(
                            onPressed: () {
                              Get.to(ForgotScreen());
                            },
                            child: CustomTextWidget(
                              text: AppStrings.FORGOT_PASSWORD_TEXT,
                              Text_Color: AppColors.BLACK_COLOR,
                              Text_fontWeight: FontWeight.bold,
                              Text_fontSize: 1.4,
                            )),
                      ),
                      ///////////////////////////// LOGIN_BUTTON //////////////////////////
                      Entry.scale(
                        child: GeneralButton(
                          ontapBtn: () {
                            Get.to(DrawerPage());
                          },
                          Btn_TextName: AppStrings.LOGIN_BUTTON_TEXT,
                          Btn_TextColor: AppColors.WHITE_COLOR,
                          Btn_Background_color: AppColors.PRIMARY_COLOR,
                        ),
                      ),
                      SizedBox(height: 40.0,),
                      ///////////////////////////// FOR_SIGNUP_SCREEN_BUTTON //////////////////////////
                      FlatButton(
                          onPressed: () {
                            Get.to(SignUpScreen());
                          },
                          child: RichText(
                            text: TextSpan(
                                text: AppStrings.DONT_HAVE_AN_ACCOUNT_TEXT,style: TextStyle(color: Colors.black, fontSize: 18.2),
                                children: [
                                  TextSpan(
                                    text:
                                    AppStrings.SIGN_UP_TEXT,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ))
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
