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
  // floatingActionButtonTheme: ,
  //TODO: FAB theme
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
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xffF4BFBF),
  ),
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      //TODO:
      //     Add following into your widget tree:
      //
      // AnnotatedRegion<SystemUiOverlayStyle>(
      //     value: SystemUiOverlayStyle.dark,
      //     child: ...
      statusBarColor: Color(0xffDB363B),
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xff000000),
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ),
    backgroundColor: Color(0xffDB363B),
    centerTitle: false,
    elevation: 0,
    foregroundColor: Color(0xffFFFFFF),
    iconTheme: IconThemeData(
      color: Colors.white,
      opacity: 0.95,
      size: 25,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
    ),
    shadowColor: const Color(0xff9E9E9E),
    //shape:
    titleSpacing: 5,
    titleTextStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.white,
      decoration: TextDecoration.none,
      //TODO: decColor not needed
      decorationColor: Colors.lightGreen,
    ),
  ),
  applyElevationOverlayColor: true,
);
