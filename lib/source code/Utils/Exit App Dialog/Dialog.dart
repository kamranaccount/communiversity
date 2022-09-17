// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
//
// import '../App Colors/AppColors.dart';
//
//
// Future<void> showMyDialog(context) async {
//   return showAnimatedDialog<void>(
//       animationType: DialogTransitionType.scaleRotate,
//       context: context,
//       barrierDismissible: true, // user must tap button!
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(22.0))),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.18,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomTextWidget(
//                       text: AppStrings.ARE_YOU_SURE_TEXT,
//                       Text_Color: AppColors.RED_COLOR,
//                       Text_fontSize: 1.4,
//                       Text_fontWeight: FontWeight.bold,
//                     ),
//                     CustomTextWidget(
//                       text: AppStrings.DO_YOU_WANT_TO_EXIT_TEXT,
//                       Text_Color: AppColors.BLACK_COLOR,
//                       Text_fontSize: 1.4,
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(20.0)),
//                       ),
//                       child: FlatButton(
//                         onPressed: () {
//                           Navigator.pop(context, false);
//                         },
//                         child: CustomTextWidget(
//                           text: AppStrings.NO_TEXT,
//                           Text_Color: AppColors.WHITE_COLOR,
//                           Text_fontSize: 1.2,
//                           Text_fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: AppColors.RED_COLOR,
//                         borderRadius: BorderRadius.only(
//                             bottomRight: Radius.circular(20.0)),
//                       ),
//                       child: FlatButton(
//                         onPressed: () {
//                           Navigator.pop(context, true);
//                           exit(0);
//                         },
//                         child: CustomTextWidget(
//                           text: AppStrings.YES_TEXT,
//                           Text_Color: AppColors.WHITE_COLOR,
//                           Text_fontSize: 1.2,
//                           Text_fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         );
//       });
// }
