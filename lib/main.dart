import 'package:bot_toast/bot_toast.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Change%20Password/view/ChangePasswordScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Edit%20Profile/view/EditProfile.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Favorites/view/FavoritesScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Home/view/HomeScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/OTP%20Verification/view/OTPScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Privacy%20Policy/view/PrivacyPolicy.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Reset%20Password/view/ResetPassword.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Settings/view/SettingScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Splash%20Screen/view/splashScreen.dart';
import 'package:communiversity/source%20code/MVC%20Screens/Terms%20&%20Conditions/view/Terms&Condition.dart';
import 'package:communiversity/source%20code/Widgets/Bottom%20Navigation/NavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      defaultTransition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      title: 'commUniversity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Favorites(),
    );
  }
}

