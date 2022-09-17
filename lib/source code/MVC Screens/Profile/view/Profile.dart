import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Button/General Button.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Edit Profile/view/EditProfile.dart';
import '../../Home/view/CurrentEvent.dart';
import '../../Home/view/HomeScreen.dart';
import '../../Home/view/UpcomingEvents.dart';
import 'ProfileDetails.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 130.0,
                    width: double.infinity,
                    decoration: new BoxDecoration(
                        color: AppColors.PRIMARY_COLOR, //new Color.fromRGBO(255, 0, 0, 0.0),
                        borderRadius: new BorderRadius.only(
                            bottomLeft:  const  Radius.circular(25.0),
                            bottomRight: const  Radius.circular(25.0))
                    ),
                    child: SafeArea(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Builder(
                                builder: (context)  =>
                                    GestureDetector(child: Image.asset(AssetPaths.DRAWER_ICON,scale: 2.5,),
                                      onTap: () => ZoomDrawer.of(context)?.toggle(),
                                      // _scaffoldKey.currentState?.openDrawer();
                                    ),
                              ),
                              CustomTextWidget(
                                text: AppStrings.PROFILE_TEXT,
                                Text_Color: AppColors.WHITE_COLOR,
                                Text_fontSize: 2.0,
                              ),
                              InkWell(child: Image.asset(AssetPaths.NOTIFICATION_ICON,scale: 2.5,),onTap: (){},),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 30.0,),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 7,
                                color: AppColors.PRIMARY_COLOR),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:AssetImage(
                                  AssetPaths.PROFILE_IMAGE),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        UserDetails(TopLabel: AppStrings.NAME_TEXT,BottomLabel: "Kamran Yaqoob",),
                        UserDetails(TopLabel: AppStrings.EMAIL_TEXT,BottomLabel:"KamranYaqoob1206@gmail.com",),
                        UserDetails(TopLabel: AppStrings.PROGRAM_ENROLLED_TEXT,BottomLabel: "Aerospace Technologies",),
                        UserDetails(TopLabel: AppStrings.ADDRESS_TEXT,BottomLabel:"1234 Lorem Ipsum Street Dummy London",),
                        UserDetails(TopLabel: AppStrings.BIO_TEXT,BottomLabel: "KamranYaqoob1206@gmail.com",),
                        SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0,right: 32.0),
                          child: GeneralButton(
                            ontapBtn: () {
                              Get.to(EditProfile());
                            },
                            Btn_TextName: AppStrings.EDIT_BUTTON_TEXT,
                            Btn_TextColor: AppColors.WHITE_COLOR,
                            Btn_Background_color: AppColors.PRIMARY_COLOR,
                          ),
                        ),
                 //      Container(height: 80.0,color: Colors.black,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
