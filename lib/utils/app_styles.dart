import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle labelTextStyle() => GoogleFonts.urbanist(fontSize: 14.sp, fontWeight: FontWeight.w500, color: kPrimaryColor);
  static TextStyle appBarHeadingTextStyle() => GoogleFonts.urbanist(fontSize: 14.sp, fontWeight: FontWeight.w400, color: kBlackColor);
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2.0,
            offset: Offset.fromDirection(-10.0),
          ),
        ],
      );
  static BorderRadius get customBorderTL40 => BorderRadius.only(
        topLeft: Radius.circular(40.h),
        bottomRight: Radius.circular(35.h),
      );
  static BorderRadius get customBorderAll16 => BorderRadius.all(
        Radius.circular(16.h),
      );
  static BorderRadius get customBorderAll8 => BorderRadius.all(
        Radius.circular(8.h),
      );

  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
        // backgroundColor: kGreenBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
  static ButtonStyle get fillOrangeBg => ElevatedButton.styleFrom(
        //  backgroundColor: kOrangeBgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
  static ButtonStyle get fillWhite => ElevatedButton.styleFrom(
        backgroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.w),
        ),
      );
}
