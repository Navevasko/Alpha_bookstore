import 'package:alpha_bookstore/shared/theme/app_colors.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final buttonTitle =
      GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400);
  static final onBoardTitle = GoogleFonts.inter(
      fontSize: 42, fontWeight: FontWeight.w800, color: Colors.white);
  static final onBoardSubTitle = GoogleFonts.inter(
      fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);
  static final homePageTitle = GoogleFonts.inter(
      fontSize: 24, fontWeight: FontWeight.w800, color: AppColors.primary);
  static final normalText = GoogleFonts.inter(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.gray);
  static final bookTitle = GoogleFonts.inter(
      fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black);
  static final bookInfo = GoogleFonts.inter(
      fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.lightGray);
}
