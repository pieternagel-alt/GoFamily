import 'package:flutter/material.dart';

/// GoFamily Farb- und Layoutsystem nach Layout-PDF v0.7
class GoFamilyColors {
  GoFamilyColors._();

  // Brand
  static const Color backgroundDark = Color(0xFF021C30);
  static const Color surfaceDark = Color(0xFF05263A);

  static const Color tealMain = Color(0xFF0097A7);
  static const Color orangeCta = Color(0xFFFF8A00);

  static const Color backgroundLight = Color(0xFFF7F9FA);
  static const Color surfaceLight = Color(0xFFFFFFFF);

  static const Color textDarkPrimary = Color(0xFFF9FAFB);
  static const Color textLightPrimary = Color(0xFF06263D);

  static const Color danger = Color(0xFFE53935);

  static const Color navInactive = Color(0xFF7B8A9A);
}

class GoFamilySpacing {
  GoFamilySpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double xxl = 32;
}

class GoFamilyRadius {
  GoFamilyRadius._();

  static const double card = 20;
  static const double button = 20;
}

class GoFamilyTheme {
  GoFamilyTheme._();

  static ThemeData dark() {
    final base = ThemeData.dark(useMaterial3: true);

    const colorScheme = ColorScheme.dark(
      primary: GoFamilyColors.tealMain,
      secondary: GoFamilyColors.orangeCta,
      surface: GoFamilyColors.surfaceDark,
    );

    return base.copyWith(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GoFamilyColors.backgroundDark,
      textTheme: _textTheme(base.textTheme, isDark: true),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      navigationBarTheme: NavigationBarThemeData(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        indicatorColor: GoFamilyColors.tealMain.withValues(alpha: 0.15),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 12,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w600
                : FontWeight.w500,
          ),
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            size: 24,
            color: states.contains(WidgetState.selected)
                ? GoFamilyColors.tealMain
                : GoFamilyColors.navInactive,
          ),
        ),
        backgroundColor: GoFamilyColors.surfaceDark,
      ),
    );
  }

  static ThemeData light() {
    final base = ThemeData.light(useMaterial3: true);

    const colorScheme = ColorScheme.light(
      primary: GoFamilyColors.tealMain,
      secondary: GoFamilyColors.orangeCta,
      surface: GoFamilyColors.surfaceLight,
    );

    return base.copyWith(
      colorScheme: colorScheme,
      scaffoldBackgroundColor: GoFamilyColors.backgroundLight,
      textTheme: _textTheme(base.textTheme, isDark: false),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        foregroundColor: GoFamilyColors.textLightPrimary,
      ),
      navigationBarTheme: NavigationBarThemeData(
        elevation: 16,
        indicatorColor: GoFamilyColors.tealMain.withValues(alpha: 0.1),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 12,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w600
                : FontWeight.w500,
          ),
        ),
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            size: 24,
            color: states.contains(WidgetState.selected)
                ? GoFamilyColors.tealMain
                : GoFamilyColors.navInactive,
          ),
        ),
        backgroundColor: GoFamilyColors.surfaceLight,
      ),
    );
  }

  static TextTheme _textTheme(TextTheme base, {required bool isDark}) {
    final primaryColor = isDark
        ? GoFamilyColors.textDarkPrimary
        : GoFamilyColors.textLightPrimary;

    return base.copyWith(
      displayLarge: (base.displayLarge ?? const TextStyle()).copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
      headlineMedium: (base.headlineMedium ?? const TextStyle()).copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
      titleMedium: (base.titleMedium ?? const TextStyle()).copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
      bodyMedium: (base.bodyMedium ?? const TextStyle()).copyWith(
        fontSize: 16,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
      labelSmall: (base.labelSmall ?? const TextStyle()).copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: primaryColor,
        fontFamily: 'Inter',
      ),
    );
  }
}

extension GoFamilyTextTheme on TextTheme {
  TextStyle get screenTitle =>
      displayLarge ??
      const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      );

  TextStyle get sectionTitle =>
      headlineMedium ??
      const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      );
}
