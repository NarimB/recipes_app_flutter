import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryLight,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.primaryLight,
      primaryContainer: AppColors.primaryContainerLight,
      secondary: AppColors.secondaryLight,
      tertiary: AppColors.accentLight,
      surface: AppColors.surfaceLight,
      error: AppColors.errorLight,
    );

    return _baseTheme(
      colorScheme: colorScheme,
      scaffoldBackground: AppColors.backgroundLight,
    );
  }

  static ThemeData dark() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryDark,
      brightness: Brightness.dark,
    ).copyWith(
      primary: AppColors.primaryDark,
      tertiary: AppColors.accentDark,
      surface: AppColors.surfaceDark,
      error: AppColors.errorDark,
    );

    return _baseTheme(
      colorScheme: colorScheme,
      scaffoldBackground: AppColors.backgroundDark,
    );
  }

  static ThemeData _baseTheme({
    required ColorScheme colorScheme,
    required Color scaffoldBackground,
  }) {
    final textTheme = AppTypography.textTheme(colorScheme.onSurface);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: scaffoldBackground,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: scaffoldBackground,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: false,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 80,
        backgroundColor: colorScheme.surface,
        indicatorColor: colorScheme.primaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
    );
  }
}
