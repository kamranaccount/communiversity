import 'dart:io';
import 'package:communiversity/source%20code/MVC%20Screens/Login/view/LoginScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Profile/view/Profile.dart';
import 'package:communiversity/source%20code/Widgets/Bottom%20Navigation/NavigationBar.dart';
import 'package:communiversity/source%20code/Widgets/Search%20Bar/CustomSearchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Texts/CustomText.dart';
import 'CurrentEvent.dart';
import 'UpcomingEvents.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                                text: AppStrings.HOME_TEXT,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: CustomSearch(
                      field_Hint_Text: AppStrings.SEARCH_HINT_TEXT,
                      EyesuffixIcon: Icon(Icons.search, color: AppColors.PRIMARY_COLOR,size: 35.0,),
                      Keyboard_Type: TextInputType.name,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),

                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: AppStrings.USER_NAME_TEXT,
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontWeight: FontWeight.bold,
                            Text_fontSize: 1.8,
                          ),
                          SizedBox(height: 8.0,),
                          CustomTextWidget(
                            text: AppStrings.CURRENT_EVENT_TEXT,
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontWeight: FontWeight.bold,
                            Text_fontSize: 1.6,
                          ),
                          SizedBox(height: 5.0,),
                          CurrentEvent(),
                          SizedBox(height: 10.0,),
                          CustomTextWidget(
                            text: AppStrings.UPCOMING_EVENTS_TEXT,
                            Text_Color: AppColors.BLACK_COLOR,
                            Text_fontWeight: FontWeight.bold,
                            Text_fontSize: 1.6,
                          ),
                          SizedBox(height: 5.0,),
                          SizedBox(
                            height: 170,
                          width: double.infinity,
                            child:ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 15,
                              itemBuilder: (BuildContext context, int index) =>  UpcomingEvents(),
                            ),
                          ),
                         // Container(height: 80.0,color: Colors.black,),
                        ],
                      ),
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



class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Search"),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Chat"),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Notify"),
    );
  }
}