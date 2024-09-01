import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EsportsArenaThemeHelper {
  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        visualDensity: VisualDensity.standard,
        textTheme: TextThemes.darktextTheme(),
        iconTheme: const IconThemeData(color: Color(0XFFFFFFFF)),
        datePickerTheme: DatePickerThemeData(
          cancelButtonStyle: ButtonStyle(
              textStyle: WidgetStatePropertyAll(
            GoogleFonts.figtree(
              color: AppColors.primaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          )),
          confirmButtonStyle: ButtonStyle(
              textStyle: WidgetStatePropertyAll(
            GoogleFonts.figtree(
              color: AppColors.primaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
          )),
          headerHelpStyle: GoogleFonts.figtree(
            color: const Color(0XFFFFFFFF),
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
          headerHeadlineStyle: GoogleFonts.figtree(
            color: const Color(0XFFFFFFFF),
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
          weekdayStyle: GoogleFonts.figtree(
            color: const Color(0XFFFFFFFF),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          dayStyle: GoogleFonts.figtree(
            color: const Color(0XFFFFFFFF),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        typography: Typography.material2021(),
        tabBarTheme: const TabBarTheme(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            splashFactory: NoSplash.splashFactory),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFFF1D1D),
                disabledBackgroundColor:
                    const Color(0XFFFF1D1D).withOpacity(0.4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0.r)),
                visualDensity:
                    const VisualDensity(vertical: -1, horizontal: -1),
                padding: EdgeInsets.zero)),
        colorScheme: ColorSchemes.darkColorSchemes);
  }
}

class ColorSchemes {
  static const darkColorSchemes = ColorScheme.dark(
    primary: Color(0XFFFF1D1D),
    onError: Color(0XFFFF5930),
  );
}

class TextThemes {
  static TextTheme lighttextTheme() => TextTheme(
        labelSmall: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: GoogleFonts.figtree(
          color: const Color(0XFFFF1D1D),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: GoogleFonts.figtree(
          color: const Color(0XFF252520),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.figtree(
          color: const Color(0XFF252520),
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.figtree(
          color: const Color(0XFF252520),
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.figtree(
            color: const Color(0XFF252520),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400),
        titleLarge: GoogleFonts.figtree(
          color: const Color(0XFF000000),
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.figtree(
          color: const Color(0XFF252520),
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: GoogleFonts.figtree(
          color: const Color(0XFFFF1D1D),
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: GoogleFonts.figtree(
          color: const Color(0XFF585D61),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: GoogleFonts.figtree(
          color: const Color(0XFF929290),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      );
  static TextTheme darktextTheme() => TextTheme(
        labelSmall: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: GoogleFonts.figtree(
          color: const Color(0XFFFF1D1D),
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: GoogleFonts.figtree(
          color: const Color(0XFFE0E0E0),
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: GoogleFonts.figtree(
          color: const Color(0XFFFFFFFF),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      );
}

class AppColors {
  static const Color primaryColor = Color(0XFFFF1D1D);
  static const Color backgroundColor = Color(0xff1E293B);
}
