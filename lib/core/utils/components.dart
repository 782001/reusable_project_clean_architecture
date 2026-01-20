import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmacy/core/utils/app_theme_colors.dart';


void showToust({required String Text}) => Fluttertoast.showToast(
  msg: Text,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor: AppColors.kPrimaryColor,
  textColor: AppColors.white,
  fontSize: 16.0,
);

enum ToustStates { SUCSESS, ERROR, WARNNING }

Color ChooseToustColor(ToustStates state) {
  Color color;
  switch (state) {
    case ToustStates.SUCSESS:
      color = Colors.green;
      break;
    case ToustStates.ERROR:
      color = Colors.red;
      break;
    case ToustStates.WARNNING:
      color = Colors.amber;
      break;
  }
  return color;
}
