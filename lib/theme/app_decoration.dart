import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDecoration {
  static BoxDecoration get fillOrangeA200 => BoxDecoration(
        color: ColorConstant.orangeA200,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray50001,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillGreenA700 => BoxDecoration(
        color: ColorConstant.greenA700,
      );
  static BoxDecoration get txtFillLightblue400 => BoxDecoration(
        color: ColorConstant.lightBlue400,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillAmber100 => BoxDecoration(
        color: ColorConstant.amber100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray20087 => BoxDecoration(
        color: ColorConstant.gray20087,
      );
  static BoxDecoration get outlineGray700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder56 = BorderRadius.circular(
    getHorizontalSize(
      56,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3,
    ),
  );

  static BorderRadius customBorderBL200 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        200,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        200,
      ),
    ),
  );

  static BorderRadius customBorderTL28 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
  );

  static BorderRadius txtCustomBorderTL28 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        28,
      ),
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;





TextTheme tekoInterTextTheme = TextTheme(
  headline1: GoogleFonts.teko(
    fontSize: 104,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  headline2: GoogleFonts.teko(
    fontSize: 65,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  headline3: GoogleFonts.teko(
    fontSize: 52,
    fontWeight: FontWeight.w400,
  ),
  headline4: GoogleFonts.teko(
    fontSize: 37,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  headline5: GoogleFonts.teko(
    fontSize: 26,
    fontWeight: FontWeight.w400,
  ),
  headline6: GoogleFonts.teko(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  subtitle1: GoogleFonts.teko(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  ),
  subtitle2: GoogleFonts.teko(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  ),
  bodyText1: GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  bodyText2: GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  button: GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  ),
  caption: GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  overline: GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
);
