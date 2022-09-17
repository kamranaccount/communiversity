import 'package:communiversity/source%20code/Utils/App%20Assets%20Path/AssetPaths.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../MVC Screens/Events/view/EventScreen.dart';
import '../../MVC Screens/Home/view/HomeScreen.dart';
import '../../MVC Screens/Profile/view/Profile.dart';
import '../../Utils/App Colors/AppColors.dart';

class Navi extends StatelessWidget {

  Navi({Key? key}) : super(key: key);
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PersistentTabView(
            context,
            controller: _controller,
            screens:
            [
              HomeScreen(),
              SearchPage(),
              HomeEvent(),
              Profile(),
            ],
            items: _navBarsItems(),
            navBarStyle: NavBarStyle.style3,
          ),
    );
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(AssetPaths.HOME_UNSELECTED_ICON,scale: 2.5,),
        icon: Container(child: Image.asset(AssetPaths.HOME_SELECTED_ICON,scale: 2.5,), decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.PRIMARY_COLOR.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(2, 6),
              // Shadow position
            ),
          ],
        ),),
        activeColorPrimary: AppColors.PRIMARY_COLOR,
        inactiveColorPrimary: AppColors.GREY_COLOR,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(AssetPaths.GAME_UNSELECTED_ICON,scale: 2.5,),
        icon: Container(child: Image.asset(AssetPaths.GAME_SELECTED_ICON,scale: 2.5,), decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.PRIMARY_COLOR.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(2, 6),
              // Shadow position
            ),
          ],
        )),
        activeColorPrimary: AppColors.PRIMARY_COLOR,
        inactiveColorPrimary: AppColors.GREY_COLOR,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(AssetPaths.EVENT_UNSELECTED_ICON,scale: 2.5,),
        icon: Container(child: Image.asset(AssetPaths.EVENT_SELECTED_ICON,scale: 2.5,), decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.PRIMARY_COLOR.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(2, 6),
              // Shadow position
            ),
          ],
        )),
        activeColorPrimary: AppColors.PRIMARY_COLOR,
        inactiveColorPrimary: AppColors.GREY_COLOR,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset(AssetPaths.PROFILE_UNSELECTED_ICON,scale: 2.5,),
        icon: Container(child: Image.asset(AssetPaths.PROFILE_SELECTED_ICON,scale: 2.5,), decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.PRIMARY_COLOR.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(2, 6),
              // Shadow position
            ),
          ],
        )),
        activeColorPrimary: AppColors.PRIMARY_COLOR,
        inactiveColorPrimary: AppColors.GREY_COLOR,
      ),
    ];
  }
}
