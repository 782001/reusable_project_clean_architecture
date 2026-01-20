import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy/core/utils/app_strings.dart';
import 'package:pharmacy/core/utils/app_theme_colors.dart';
import 'package:pharmacy/core/utils/responsive_text.dart';
import 'package:pharmacy/core/utils/strings.dart';


abstract class TextStyles {
  static stylewhitesemibold20(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static stylekohlysemibold14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static styleGreysemibold14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.GreyColor,
    );
  }

  static styleblacksemibold18(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static styleblacksemibold33(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 33),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static styleblacksemibold14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static stylewhitesemibold14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static stylewhitesemibold16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static stylewhitemedium16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.white,
    );
  }

  static stylewhitebold34(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 34),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.white,
    );
  }

  static stylewhitemedium12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.white,
    );
  }

  static TextStyle stylewhitemedium14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.white,
    );
  }

  static stylegreyregular10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.OrGreyColor,
    );
  }

  static styleOrangbold10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.OrangColor,
    );
  }

  static styleOrangregular10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.OrangColor,
    );
  }

  static stylewhitemedium10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.white,
    );
  }

  static stylewhiteregular10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.white,
    );
  }

  static stylewhiteregular12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.white,
    );
  }

  static stylewhiteregular14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.white,
    );
  }

  static stylewhitebold32(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 32),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.white,
    );
  }

  static stylekohlysemibold_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlysemibold_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static styleblacksemibold_11(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 11),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static stylekohlysemibold_11(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 11),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static styleredsemibold_18(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.redColor,
    );
  }

  static stylekohlyregular_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlyregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.kohlyColor,
    );
  }

  static styleRedrsemibold_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.redColor,
    );
  }

  static styleblacksemibold_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static styleblacksemibold_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static styleblacksemibold_22(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 22),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.black,
    );
  }

  static stylekohlysemibold_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlysemibold_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static stylewhitesemibold_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static stylewhitesemibold_18(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static stylewhitesemibold_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.white,
    );
  }

  static styleGreysemibold_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.OrGreyColor,
    );
  }

  static stylekohlybold_14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlyregular_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlyregular_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.kohlyColor,
    );
  }
  // static stylekohlymedium_12(
  //   BuildContext context,
  // ) {
  //   return GoogleFonts.montserrat(
  //       textStyle: TextStyle(
  //           fontSize: getResponsiveFontSize(context, fontsize: 12),
  //
  //           fontWeight:FontKind.getFontWeight(FontWeightKind.medium),
            // color: AppColors.kohlyColor);
  // }

  static stylekohlymedium_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.kohlyColor,
    );
  }

  static stylekohlymedium_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.kohlyColor,
    );
  }

  static styleOrangColorsemibold_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.OrangColor,
    );
  }

  static styleOrangColorsemibold_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.OrangColor,
    );
  }

  static stylekohlymedium_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.kohlyColor,
    );
  }

  static styleblackmedium_20(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.black,
    );
  }

  static stylewhitemedium_13(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 13),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.white,
    );
  }

  static styleblackmedium_13(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 13),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.black,
    );
  }

  static styleblackregular_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.black,
    );
  }

  static styleblackbold_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.black,
    );
  }

  static styleblackregular_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.black,
    );
  }

  static styleblackregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.black,
    );
  }

  static styleblackbold_24(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.black,
    );
  }

  static styleblackbold_18(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.black,
    );
  }

  static styleblackbold_32(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 32),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.black,
    );
  }

  static stylekohlysemibold_20(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      //
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static stylegreensemibold_26(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 26),
      //
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: Colors.green,
    );
  }

  static styleRedmedium_20(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      //
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: Colors.red,
      decoration: TextDecoration.lineThrough,
      // decorationColor: Colors.red,
      decorationThickness: 2,
    );
  }

  static stylekohlysemibold_18(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      //
      fontWeight: FontKind.getFontWeight(FontWeightKind.semibold),
      // color: AppColors.kohlyColor,
    );
  }

  static styleSlatemedium_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.SlateColor,
    );
  }

  static styleSlateregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.SlateColor,
    );
  }

  static styleOrangColorregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.OrangColor,
    );
  }



  static stylewhiteregular_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.white,
      color: Colors.grey.shade900
    );
  }

  static styleGreybold_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.bold),
      // color: AppColors.GreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreyregular_16(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.GreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreyregular_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.OrGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreymedium_10(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 10),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.OrGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreymedium_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.OrGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreymedium_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.medium),
      // color: AppColors.verfiTextGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleGreyregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.OrGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleverfiTextGreyregular_14(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontKind.getFontWeight(FontWeightKind.regular),
      // color: AppColors.verfiTextGreyColor,
      color: Colors.grey.shade900
    );
  }

  static styleStrongREd_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.bold,
      // color: AppColors.RedStrongColor,
      color: Colors.grey.shade900
    );
  }

  static styleUnderLineStrongREd_12(BuildContext context) {
    final isArabic = AppStrings.currentLang.toLowerCase() == 'ar';

    return (isArabic ? GoogleFonts.cairo() : GoogleFonts.montserrat()).copyWith(
      fontSize: getResponsiveFontSize(context, fontsize: 12),
      fontWeight: FontWeight.bold,
      // color: AppColors.RedStrongColor,
      decoration: TextDecoration.underline,
      // decorationColor: Colors.red,
    );
  }

  static styleRedregular_14(BuildContext context) {}
}
