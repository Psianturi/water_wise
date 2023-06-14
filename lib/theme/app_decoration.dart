import 'package:flutter/material.dart';
import '../../core/app_export.dart';


class AppDecoration {
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get green => BoxDecoration(
    color: ColorConstant.blueGray700,
  );

  static BoxDecoration get fillIndigo800 => BoxDecoration(
    color: ColorConstant.indigo800,
  );
  static BoxDecoration get fillBluegray400 => BoxDecoration(
    color: ColorConstant.blueGray400,
  );
  static BoxDecoration get fillBluegray40001 => BoxDecoration(
    color: ColorConstant.blueGray40001,
  );

  static BoxDecoration get fillGray50 => BoxDecoration(
    color: ColorConstant.gray50,
  );


  static BoxDecoration get outlineGray300 => BoxDecoration(
    border: Border.all(
      color: ColorConstant.gray300,
      width: getHorizontalSize(
        1,
      ),
    ),
  );

  static BoxDecoration get gradientBluegray700Bluegray500 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.1,
            0,
          ),
          end: Alignment(
            0.64,
            1.02,
          ),
          colors: [
            ColorConstant.blueGray700,
            ColorConstant.blueGray500,
          ],
        ),
      );
  static BoxDecoration get fillBluegray4003d => BoxDecoration(
        color: ColorConstant.blueGray4003d,
      );

  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
    color: ColorConstant.whiteA700,
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
          4.35,
          5.43,
        ),
      ),
    ],
  );

  static BoxDecoration get outlineBlack9003f => BoxDecoration(
    color: ColorConstant.whiteA700,
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

  static BoxDecoration get txtOutlineGray300 => BoxDecoration(
    border: Border.all(
      color: ColorConstant.gray300,
      width: getHorizontalSize(
        1,
      ),
    ),
  );

}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );
  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25,
    ),
  );
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );
  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );
  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius customBorderTL25 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        25,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        25,
      ),
    ),
  );

  static BoxDecoration get outlineBlack90019 => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.black90019,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          2,
        ),
      ),
    ],
  );
  static BoxDecoration get green => BoxDecoration(
    color: ColorConstant.blueGray700,
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
