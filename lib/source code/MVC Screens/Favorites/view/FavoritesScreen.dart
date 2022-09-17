import 'package:flutter/material.dart';

import '../../../Utils/App Strings/AppStrings.dart';
import '../../../Widgets/App Bar/AppBar.dart';
import '../../Home/view/CurrentEvent.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
        children: [
        CustomAppBar(ScreenName: AppStrings.FAVORITES_TEXT),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 650.0,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => CurrentEvent()
        ),
      ),
    ),

    ]));
  }
}
