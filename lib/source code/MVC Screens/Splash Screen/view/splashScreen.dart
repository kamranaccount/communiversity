import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:communiversity/source code/Utils/App Assets Path/AssetPaths.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import '../controller/SplashController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  final AppsplashController = Get.put(AppSplashScreenController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppsplashController.SplashScreenNavigateToNextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
          child: Image.asset(AssetPaths.TOP_IMAGE,scale:4,),
          ),
          Entry.scale(
            child: Center(
              child:Image.asset(AssetPaths.LOGO_IMAGE,scale: 4,),
            ),
            curve: Curves.bounceOut,
            duration: Duration(seconds: 2),
          ),
       Container(
         child: Image.asset(AssetPaths.BOTTOM_IMAGE),
       ),
        ],
      )
    );
  }
}
