
import 'package:flutter/material.dart';

const String MontserratFont = "Montserrat";

  // 'Thin': FontWeight.w100,
  //   'ExtraLight': FontWeight.w200,
  //   'Light': FontWeight.w300,
  //   'Regular': FontWeight.w400,
  //   'Medium': FontWeight.w500,
  //   'SemiBold': FontWeight.w600,
  //   'Bold': FontWeight.w700,
  //   'ExtraBold': FontWeight.w800,
  //   'Black': FontWeight.w900,
class FontKind {
  static const Map<String, FontWeight> fontWeights = {
    'Thin': FontWeight.w100,
    'ExtraLight': FontWeight.w200,
    'Light': FontWeight.w300,
    'Regular': FontWeight.w400,
    'Medium': FontWeight.w500,
    'SemiBold': FontWeight.w600,
    'Bold': FontWeight.w700,
    'ExtraBold': FontWeight.w800,
    'Black': FontWeight.w900,
  };

  static FontWeight getFontWeight(String weightName) {
    return fontWeights[weightName] ?? FontWeight.normal;
  }
}
    abstract class FontWeightKind {
 static const String thin = "Thin";
 static const String extraLight = "ExtraLight";
 static const String light = "Light";
 static const String regular = "Regular";
 static const String medium = "Medium";
 static const String semibold = "SemiBold";
 static const String bold = "Bold";
 static const String extrabold = "ExtraBold";
 static const String black = "Black";

 }