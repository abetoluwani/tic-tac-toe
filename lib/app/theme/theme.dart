import 'package:flutter/material.dart';
import '../widgets/space.dart';
import 'chip_theme.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
        scaffoldBackgroundColor: Colors.grey[800],
        dialogBackgroundColor: AppColors.white,
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
        ),
        primaryColor: AppColors.primary,
        cardColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          surfaceTintColor: Colors.transparent,
        ),
        chipTheme: AppChipTheme.lightChipTheme,
        primaryColorLight: AppColors.white,
        popupMenuTheme: const PopupMenuThemeData(color: AppColors.white));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        scaffoldBackgroundColor: Colors.grey[800],
        dialogBackgroundColor: AppColors.white,
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          iconTheme: IconThemeData(color: AppColors.black),
        ),
        chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        primaryColorLight: AppColors.white,
        popupMenuTheme: const PopupMenuThemeData(color: AppColors.white));
  }
}
