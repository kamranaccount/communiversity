import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppEditingControllers extends GetxController {
  ///////////////////////////// CommUniversity TEXT EDITING CONTROLLERS /////////////////////////////
  late TextEditingController
      SIGNUPEMAIL,
      SIGNUP_PASSWORD,
      SIGNUP_USERNAME,
      SIGNUP_CONFIRMPASSWORD,
      SIGNUP_ADDRESS,
      SIGNUP_BIO,
      LOGIN_EMAIL,
      LOGIN_PASSWORD,
      FORGOT_EMAIL,
      NEW_PASSWORD,
      CONFIRM_PASSWORD;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    SIGNUPEMAIL = TextEditingController();
    SIGNUP_PASSWORD = TextEditingController();
    SIGNUP_USERNAME= TextEditingController();
    SIGNUP_CONFIRMPASSWORD = TextEditingController();
    LOGIN_EMAIL = TextEditingController();
    LOGIN_PASSWORD = TextEditingController();
    FORGOT_EMAIL = TextEditingController();
    NEW_PASSWORD = TextEditingController();
    CONFIRM_PASSWORD = TextEditingController();
    SIGNUP_BIO = TextEditingController();
    SIGNUP_ADDRESS = TextEditingController();
  }
}
