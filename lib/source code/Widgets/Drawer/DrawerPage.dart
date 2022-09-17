import 'package:communiversity/source%20code/MVC%20Screens/Home/view/HomeScreen.dart';
import 'package:communiversity/source%20code/Utils/App%20Colors/AppColors.dart';
import 'package:communiversity/source%20code/Widgets/Bottom%20Navigation/NavigationBar.dart';
import 'package:communiversity/source%20code/Widgets/Drawer/MenuPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  menuItem currentItem = MenuItems.home;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
      angle: -17.0,
       menuBackgroundColor: AppColors.PRIMARY_COLOR,
      menuScreen: MenuPage(
        currentItem: currentItem,
        onSelectedItem: (item){
          setState(() {
            currentItem = item;
          });
        }
      ),
      androidCloseOnBackTap: true,
      disableDragGesture: true,
      mainScreenTapClose: true,
      menuScreenWidth: double.infinity,
      mainScreenScale: 0.45,
      borderRadius: 28.0,
      mainScreen: Navi ());

}
