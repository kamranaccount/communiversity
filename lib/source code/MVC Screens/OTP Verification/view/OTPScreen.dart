import 'dart:async';

import 'package:communiversity/source%20code/MVC%20Screens/Change%20Password/view/ChangePasswordScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Text Editing Controllers/TextEditing_Controllers.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Forgot Password/view/ForgotScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // final TextEditingController = Get.put(AppEditingControllers());
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";
  bool hasError = false;
  StreamController<ErrorAnimationType>? errorController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(AssetPaths.OTP_VERIFICATION_IMAGE),
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
                          Get.to(ForgotScreen());
                        },
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CustomTextWidget(
                        text: AppStrings.OTP_VERIFICATION_TEXT,
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
                      ///////////////////////////// PIN_TEXT_FIELDS //////////////////////////
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: AppColors.GREY_COLOR,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 6,
                            obscureText: false,
                            obscuringCharacter: '*',
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 3) {
                                return "I'm from validator";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.circle,
                              fieldHeight: 60,
                              fieldWidth: 60,
                              activeColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.9),
                              inactiveFillColor:  AppColors.LIGHT_GREY_COLOR.withOpacity(0.9),
                              inactiveColor:  AppColors.LIGHT_GREY_COLOR.withOpacity(0.9),
                              selectedFillColor:  AppColors.LIGHT_GREY_COLOR.withOpacity(0.9),
                              selectedColor:  AppColors.LIGHT_GREY_COLOR.withOpacity(0.9),
                              activeFillColor:
                                  hasError ? Colors.orange :  AppColors.LIGHT_GREY_COLOR,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: Duration(milliseconds: 300),
                            textStyle: TextStyle(fontSize: 20, height: 1.6),
                            enableActiveFill: true,
                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                //currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              return true;
                            },
                          )),
                      SizedBox(
                        height: 25.0,
                      ),
                      Image.asset(AssetPaths.TIME_ICON,scale: 1,),
                      SizedBox(
                        height: 5.0,
                      ),
                      CustomTextWidget(
                        text: "00:59",
                        Text_Color: AppColors.PRIMARY_COLOR,
                        Text_fontWeight: FontWeight.bold,
                        Text_fontSize: 1.6,
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      ///////////////////////////// VERIFY_CODE_BUTTON //////////////////////////
                      GeneralButton(
                        ontapBtn: () {
                          Get.to(ChangePassword());
                        },
                        Btn_TextName: AppStrings.VERIFY_TEXT,
                        Btn_TextColor: AppColors.WHITE_COLOR,
                        Btn_Background_color: AppColors.PRIMARY_COLOR,
                      ),
                      SizedBox(height: 50.0,),
                      FlatButton(
                          onPressed: () {
                         //   Get.to(LoginScreen());
                          },
                          child: RichText(
                            text: TextSpan(
                                text: AppStrings.DONT_RECEIVE_CODE_TEXT,style: TextStyle(color: Colors.black, fontSize: 18.2),
                                children: [
                                  TextSpan(
                                    text:
                                    AppStrings.RESEND_TEXT,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
}
