import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../Utils/App Assets Path/AssetPaths.dart';
import '../../../Utils/App Colors/AppColors.dart';
import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/Search Bar/CustomSearchBar.dart';
import '../../../Widgets/Texts/CustomText.dart';
import '../../Home/view/CurrentEvent.dart';

class HomeEvent extends StatelessWidget {
  const HomeEvent({Key? key}) : super(key: key);
  final int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.LIGHT_GREY_COLOR.withOpacity(0.2),
        child: Stack(children: [
          Column(children: [
            Stack(
              children: [
                Container(
                  height: 130.0,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          bottomLeft: const Radius.circular(25.0),
                          bottomRight: const Radius.circular(25.0))),
                  child: SafeArea(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Builder(
                              builder: (context) => GestureDetector(
                                child: Image.asset(
                                  AssetPaths.DRAWER_ICON,
                                  scale: 2.5,
                                ),
                                onTap: () => ZoomDrawer.of(context)?.toggle(),
                                // _scaffoldKey.currentState?.openDrawer();
                              ),
                            ),
                            CustomTextWidget(
                              text: AppStrings.EVENTS_TEXT,
                              Text_Color: AppColors.WHITE_COLOR,
                              Text_fontSize: 2.0,
                            ),
                            InkWell(
                              child: Image.asset(
                                AssetPaths.NOTIFICATION_ICON,
                                scale: 2.5,
                              ),
                              onTap: () {},
                            ),
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
                    EyesuffixIcon: Icon(
                      Icons.search,
                      color: AppColors.PRIMARY_COLOR,
                      size: 35.0,
                    ),
                    Keyboard_Type: TextInputType.name,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 18.0, right: 18.0),
                decoration: BoxDecoration(
                  color: AppColors.WHITE_COLOR,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.LIGHT_GREY_COLOR,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: DefaultTabController(
                    length: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: TabBar(
                        unselectedLabelColor: AppColors.GREY_COLOR,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 5.0,
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        unselectedLabelStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                        labelColor: AppColors.PRIMARY_COLOR,
                        indicatorColor: AppColors.PRIMARY_COLOR,
                        tabs: [
                          Tab(text: "Upcoming Events"),
                          Tab(text: "Previous Events",),
                    ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CurrentEvent(),
                        ]))),

            // Expanded(
            //   child: TabBarView(children: [
            //      Container(height: 50.0,color: Colors.red,),
            //   ]),
            // ),
          ])
        ]));
  }
}
