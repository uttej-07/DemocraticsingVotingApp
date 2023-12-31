// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryDark;
  late Color background;
  late Color grayIcon;
  late Color gray200;
  late Color dark600;
  late Color lineColor;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color primaryBtnText;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color backgroundComponents;
  late Color primary600;
  late Color secondary600;
  late Color tertiary600;
  late Color darkBGstatic;
  late Color secondary30;
  late Color overlay0;
  late Color overlay;
  late Color primary30;
  late Color customColor1;
  late Color maximumBlueGreen;
  late Color plumpPurple;
  late Color platinum;
  late Color ashGray;
  late Color darkSeaGreen;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4E39F9);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0xFF1A1F24);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color primaryDark = Color(0xFF1A1F24);
  late Color background = Color(0xFFF1F4F8);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color dark600 = Color(0xFF262D34);
  late Color lineColor = Color(0x4BFFFFFF);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color primary600 = Color(0xFF336A4A);
  late Color secondary600 = Color(0xFF6D604A);
  late Color tertiary600 = Color(0xFF0C2533);
  late Color darkBGstatic = Color(0xFF0D1E23);
  late Color secondary30 = Color(0x4D928163);
  late Color overlay0 = Color(0x00FFFFFF);
  late Color overlay = Color(0xB2FFFFFF);
  late Color primary30 = Color(0x4D4B986C);
  late Color customColor1 = Color(0xFF2FB73C);
  late Color maximumBlueGreen = Color(0xFF59C3C3);
  late Color plumpPurple = Color(0xFF52489C);
  late Color platinum = Color(0xFFEBEBEB);
  late Color ashGray = Color(0xFFCAD2C5);
  late Color darkSeaGreen = Color(0xFF84A98C);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Urbanist';
  TextStyle get title1 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get title2Family => 'Urbanist';
  TextStyle get title2 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get title3Family => 'Urbanist';
  TextStyle get title3 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get subtitle1Family => 'Urbanist';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      );
  String get subtitle2Family => 'Urbanist';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.secondaryText,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      );
  String get bodyText1Family => 'Urbanist';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodyText2Family => 'Urbanist';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Urbanist',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF4E39F9);
  late Color secondaryColor = const Color(0xFF39D2C0);
  late Color tertiaryColor = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0xFF1A1F24);
  late Color primaryBackground = const Color(0xFF59C3C3);
  late Color secondaryBackground = const Color(0xFF59C3C3);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color primaryDark = Color(0xFF1A1F24);
  late Color background = Color(0xFFF1F4F8);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color dark600 = Color(0xFF262D34);
  late Color lineColor = Color(0xFFE95E48);
  late Color gray600 = Color(0xFF262D34);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color textColor = Color(0xFF1E2429);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color btnText = Color(0xFFFFFFFF);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color primary600 = Color(0xFF336A4A);
  late Color secondary600 = Color(0xFF6D604A);
  late Color tertiary600 = Color(0xFF0C2533);
  late Color darkBGstatic = Color(0xFF0D1E23);
  late Color secondary30 = Color(0x4D928163);
  late Color overlay0 = Color(0x000B191E);
  late Color overlay = Color(0xB20B191E);
  late Color primary30 = Color(0x4D4B986C);
  late Color customColor1 = Color(0xFF452FB7);
  late Color maximumBlueGreen = Color(0xFF59C3C3);
  late Color plumpPurple = Color(0xFF52489C);
  late Color platinum = Color(0xFFEBEBEB);
  late Color ashGray = Color(0xFFCAD2C5);
  late Color darkSeaGreen = Color(0xFF84A98C);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
