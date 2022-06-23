import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appThemeLight = ThemeData(
  brightness: Brightness.light,
  backgroundColor: const Color(0xffF7F9FC),
  scaffoldBackgroundColor: const Color(0xffF7F9FC),
  //For hints
  hintColor: const Color(0xff9E9E9E),
  //Try EFEFEF
  //Try also F5F5F6
  //mainColor
  primaryColor: const Color(0xffDB363B),
  //main Color for light
  primaryColorLight: const Color(0xffffffff),
  //main Color for dark
  primaryColorDark: const Color(0xff000000),
  splashColor: const Color(0xffF4BFBF),
  textTheme: const TextTheme(),
  fontFamily: 'DMSans',
  primaryTextTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 24, color: Color(0xff222B45)),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff222B45)),
    headline3: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xff222B45)),
    subtitle1: TextStyle(fontSize: 14, color: Color(0xff222B45)),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffF4BFBF),),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      //TODO:
    //     Add following into your widget tree:
    //
    // AnnotatedRegion<SystemUiOverlayStyle>(
    //     value: SystemUiOverlayStyle.dark,
    //     child: ...
      statusBarColor: Color(0xffDB363B),
      statusBarIconBrightness:  Brightness.light,
      systemNavigationBarColor: Color(0xff000000),
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness:  Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ),
    backgroundColor: Colors.yellow,
    centerTitle: false,
    elevation: 0,
    foregroundColor: Color(0xff000000),
    ),
  applyElevationOverlayColor: true,
  );


