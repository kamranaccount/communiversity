import 'dart:io';

import 'package:communiversity/source%20code/MVC%20Screens/Login/view/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Text Editing Controllers/TextEditing_Controllers.dart';
import '../../../Widgets/TextFields/Text_Field.dart';
import '../../../Widgets/Texts/CustomText.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController = Get.put(AppEditingControllers());
  bool _isHidden = true;
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(AssetPaths.SIGNUP_IMAGE),
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
                        text: AppStrings.SIGN_UP_TEXT,
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
                      InkWell(
                        child:     _imageFile == null?
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 6,
                                color: AppColors.PRIMARY_COLOR),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage(
                                    AssetPaths.USER_PROFILE_ICON),
                                scale: 6),
                          ),
                        ): Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 6,
                                color: AppColors.PRIMARY_COLOR),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:FileImage(File(_imageFile!.path)),
                                scale: 6),
                          ),
                        ),
                        onTap: (){
                          showModalBottomSheet(
                              backgroundColor: AppColors.PRIMARY_COLOR,
                              context: context,
                              builder: ((builder) => CustombottomSheet()));
                        },
                      ),
                      SizedBox(height: 12.0,),
                      ///////////////////////////// USERNAME_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.SIGNUP_USERNAME,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.person),
                        Keyboard_Type: TextInputType.name,
                        field_label_Text: AppStrings.USERNAME_HINT_TEXT,
                      ),
                      ///////////////////////////// EMAIL_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.LOGIN_EMAIL,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.email),
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.EMAIL_HINT_TEXT,

                      ),
                      ///////////////////////////// ADDRESS_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.SIGNUP_ADDRESS,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.location_on),
                        Keyboard_Type: TextInputType.streetAddress,
                        field_label_Text: AppStrings.ADDRESS_HINT_TEXT,
                      ),
                      ///////////////////////////// PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.SIGNUP_PASSWORD,
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
                      ///////////////////////////// CONFIRM_PASSWORD_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.SIGNUP_CONFIRMPASSWORD,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.lock),
                        Obscure_Text: _isHidden,
                        Keyboard_Type: TextInputType.visiblePassword,
                        field_label_Text: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
                        EyesuffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden ? Icons.visibility : Icons.visibility_off,
                              color: AppColors.LIGHT_GREY_COLOR,
                            )),
                      ),
                      ///////////////////////////// USER_BIO_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                        Field_controller: TextEditingController.SIGNUP_BIO,
                        field_BgColor: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
                        Field_Icon: Icon(Icons.details),
                        Keyboard_Type: TextInputType.text,
                        field_label_Text: AppStrings.BIO_HINT_TEXT,
                      ),
                      SizedBox(height: 15.0,),
                      ///////////////////////////// SIGN_UP_BUTTON //////////////////////////
                      GeneralButton(
                        ontapBtn: () {},
                        Btn_TextName: AppStrings.SIGNUP_BUTTON_TEXT,
                        Btn_TextColor: AppColors.WHITE_COLOR,
                        Btn_Background_color: AppColors.PRIMARY_COLOR,
                      ),
                      SizedBox(height: 15.0,),
                      ///////////////////////////// FOR_LOGIN_SCREEN_BUTTON //////////////////////////
                      FlatButton(
                          onPressed: () {
                            Get.to(LoginScreen());
                          },
                          child: RichText(
                            text: TextSpan(
                                text: AppStrings.ALREADY_HAVE_AN_ACCOUNT_TEXT,style: TextStyle(color: Colors.black, fontSize: 18.2),
                                children: [
                                  TextSpan(
                                    text:
                                    AppStrings.LOGIN_TEXT,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
  Widget CustombottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.BLACK_COLOR,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomTextWidget(
              text: AppStrings.CHOOSE_PROFILE_PHOTO_TEXT,
              Text_Color: AppColors.WHITE_COLOR,
              Text_fontSize: 1.3,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  color: AppColors.PRIMARY_COLOR,
                ),
                label: CustomTextWidget(
                  text: AppStrings.CAMERA_TEXT,
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.3,
                ),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  print("camera");
                },
                icon: Icon(
                  Icons.image,
                  color: AppColors.PRIMARY_COLOR,
                ),
                label: CustomTextWidget(
                  text: AppStrings.GALLERY_TEXT,
                  Text_Color: AppColors.WHITE_COLOR,
                  Text_fontSize: 1.3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
    if (_imageFile == null) {
     print("Please!Upload Image");
    }
    if (_imageFile != null) {
      print("image upload");
      setState(() {
       // image = File(_imageFile!.path);
      });
    } else {
      print("No Image Picked..");
    }
    Get.back();
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
