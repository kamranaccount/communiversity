import 'package:communiversity/source%20code/Utils/App%20Assets%20Path/AssetPaths.dart';
import 'package:communiversity/source%20code/Utils/App%20Colors/AppColors.dart';
import 'package:communiversity/source%20code/Widgets/Texts/CustomText.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final menuItem currentItem;
  final ValueChanged<menuItem> onSelectedItem;
  const MenuPage(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.PRIMARY_COLOR,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  child: ListTile(
                      leading: Container(
                      width: 60.0,
                        decoration: BoxDecoration(
                          //border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AssetPaths.DUMMY_IMAGE),
                            scale: 6,
                          ),
                        ),
                      ),
                      title: CustomTextWidget(
                        text: "Kamran Yaqoob",
                        Text_Color: AppColors.WHITE_COLOR,
                        Text_fontSize: 1.3,
                        Text_fontWeight: FontWeight.bold,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: "KamranYaqoob1206@gmail.com",
                            Text_Color: AppColors.WHITE_COLOR,
                            Text_fontSize: 1.1,
                          ),
                          CustomTextWidget(
                            text: "Loreum Ipsum Address UK, London",
                            Text_Color: AppColors.WHITE_COLOR,
                            Text_fontSize: 1.1,
                          ),
                        ],
                      )),
                ),
              ),
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      );
  Widget buildMenuItem(menuItem item) => Container(
        width: 208.0,
        child: ListTileTheme(
          selectedColor: AppColors.WHITE_COLOR,
          child: ListTile(
            selectedTileColor: Colors.black26,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(28.0),
                    bottomRight: Radius.circular(28.0))),
            selected: currentItem == item,
            minLeadingWidth: 20,
            leading: item.Btn_Icon,
            title: CustomTextWidget(
              text: item.title,
              Text_Color: AppColors.WHITE_COLOR,
              Text_fontSize: 1.0,
            ),
            onTap: () => onSelectedItem(item),
          ),
        ),
      );
}

class MenuItems {
  static final home = menuItem(
      "Home",
      Image.asset(
        AssetPaths.HOME_ICON,
        scale: 3.0,
      ));
  static final tar_heel = menuItem(
      "Tar Heel Tracks",
      Image.asset(
        AssetPaths.HEEL_ICON,
        scale: 3.0,
      ));
  static final messages = menuItem(
      "My Messages",
      Image.asset(
        AssetPaths.MESSAGE_ICON,
        scale: 3.0,
      ));
  static final favorites = menuItem(
      "Favorites",
      Image.asset(
        AssetPaths.FAVOURITE_ICON,
        scale: 3.0,
      ));
  static final settings = menuItem(
      "Settings",
      Image.asset(
        AssetPaths.SETTINGS_ICON,
        scale: 3.0,
      ));
  static final terms_Condition = menuItem(
      "Terms & Conditions",
      Image.asset(
        AssetPaths.TERMS_CONDITION_ICON,
        scale: 3.0,
      ));
  static final privacy_Policy = menuItem(
      "Privacy Policy",
      Image.asset(
        AssetPaths.PRIVACY_ICON,
        scale: 3.0,
      ));
  static final signout = menuItem(
      "Signout",
      Image.asset(
        AssetPaths.SIGNOUT_ICON,
        scale: 3.0,
      ));

  static final all = <menuItem>[
    home,
    tar_heel,
    messages,
    favorites,
    settings,
    terms_Condition,
    privacy_Policy,
    signout
  ];
}

class menuItem {
  final String? title;
  final Image? Btn_Icon;
  const menuItem(this.title, this.Btn_Icon);
}
