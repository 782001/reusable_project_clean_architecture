import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;
  double lowerLimit = fontsize * .8;
  double upperLimit = fontsize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 375;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
