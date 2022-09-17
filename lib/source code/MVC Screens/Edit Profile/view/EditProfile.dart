import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/App Bar/AppBar.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/TextFields/Text_Field.dart';
import '../../../Widgets/Texts/CustomText.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  PickedFile? _imageFile;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(ScreenName: AppStrings.EDIT_PROFILE_TEXT),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          _imageFile == null
                              ? Container(
                            width: 130,
                            height: 130,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4, color: AppColors.PRIMARY_COLOR),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        AssetPaths.DUMMY_IMAGE),
                                    scale: 6),
                              ),
                            ),
                            //     : CachedNetworkImage(
                            //   imageUrl:
                            //   'http://server.appsstaging.com:3017/' +
                            //       UserImage.read('Image'),
                            //   imageBuilder: (context, imageProvider) =>
                            //       Container(
                            //         decoration: BoxDecoration(
                            //           color: AppColors.BLACK_COLOR,
                            //           image: DecorationImage(
                            //             image: imageProvider,
                            //             fit: BoxFit.cover,
                            //           ),
                            //         ),
                            //       ),
                            //   placeholder: (context, url) => Container(
                            //     height: 140,
                            //     width: 150,
                            //     child: Shimmer.fromColors(
                            //       baseColor: AppColors.BLACK_COLOR,
                            //       highlightColor: AppColors.WHITE_COLOR,
                            //       child: Container(
                            //         height: 140,
                            //         width: 150,
                            //         decoration: BoxDecoration(
                            //           color: AppColors.BLACK_COLOR,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            //   errorWidget: (context, url, error) =>
                            //       Icon(Icons.error),
                            // ),
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //       width: 2,
                            //       color: Theme.of(context)
                            //           .scaffoldBackgroundColor),
                            //   boxShadow: [
                            //     BoxShadow(
                            //         spreadRadius: 2,
                            //         blurRadius: 10,
                            //         color: Colors.black.withOpacity(0.1),
                            //         offset: Offset(0, 10))
                            //   ],
                            //   shape: BoxShape.circle,
                            // ),
                          )
                              : Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(File(_imageFile!.path)),
                                  scale: 6),
                            ),
                          ),
                          Positioned(
                              bottom: -10.0,
                              right: -5.0,
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: AppColors.PRIMARY_COLOR,
                                      context: context,
                                      builder: ((builder) => CustombottomSheet()));
                                },
                                child: Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: AppColors.PRIMARY_COLOR,
                                    ),
                                    color: AppColors.WHITE_COLOR,
                                  ),
                                  child: Image.asset(
                                    AssetPaths.UPLOAD_ICON,
                                    scale: 2.5,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      ///////////////////////////// USERNAME_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                   //     Field_controller: TextEditingController.SIGNUP_USERNAME,
                        field_BgColor:
                            AppColors.WHITE_COLOR,
                        Field_Icon: Icon(Icons.person),
                        Keyboard_Type: TextInputType.name,
                        field_label_Text: AppStrings.USERNAME_HINT_TEXT,
                      ),
                      ///////////////////////////// EMAIL_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                     //   Field_controller: TextEditingController.LOGIN_EMAIL,
                        field_BgColor:
                        AppColors.WHITE_COLOR,
                        Field_Icon: Icon(Icons.email),
                        Keyboard_Type: TextInputType.emailAddress,
                        field_label_Text: AppStrings.EMAIL_HINT_TEXT,
                      ),
                      ///////////////////////////// ADDRESS_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                      //  Field_controller: TextEditingController.SIGNUP_ADDRESS,
                        field_BgColor:
                        AppColors.WHITE_COLOR,
                        Field_Icon: Icon(Icons.location_on),
                        Keyboard_Type: TextInputType.streetAddress,
                        field_label_Text: AppStrings.ADDRESS_HINT_TEXT,
                      ),
                      ///////////////////////////// USER_BIO_TEXT_FIELDS //////////////////////////
                      CustomTextField(
                     //   Field_controller: TextEditingController.SIGNUP_BIO,
                        field_BgColor:
                        AppColors.WHITE_COLOR,
                        Field_Icon: Icon(Icons.details),
                        Keyboard_Type: TextInputType.text,
                        field_label_Text: AppStrings.BIO_HINT_TEXT,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ///////////////////////////// SIGN_UP_BUTTON //////////////////////////
                      GeneralButton(
                        ontapBtn: () {},
                        Btn_TextName: AppStrings.UPDATE_BUTTON_TEXT,
                        Btn_TextColor: AppColors.WHITE_COLOR,
                        Btn_Background_color: AppColors.PRIMARY_COLOR,
                      ),
                      SizedBox(
                        height: 15.0,
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
}
