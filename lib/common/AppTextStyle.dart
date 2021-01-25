import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_providerarchi_starter/common/AppFontSize.dart';

class AppTextStyle {
  static TextStyle header1(BuildContext context, Color color) {
    return GoogleFonts.alef(
        fontSize: AppFontSize.largest, textStyle: TextStyle(color: color));
  }
}
