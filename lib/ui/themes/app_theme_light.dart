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

    headline4: TextStyle(
        fontWeight: FontWeight.w400, fontSize: 10, color: Colors.black54),
    subtitle1: TextStyle(fontSize: 14, color: Color(0xff222B45)),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xffF4BFBF),
  ),
  appBarTheme: AppBarTheme(

    actionsIconTheme: IconThemeData(
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
    titleSpacing: 10,
    titleTextStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.white,
      decoration: TextDecoration.none,
      //TODO: decColor and decStyle not needed
      decorationColor: Colors.lightGreen,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 10,
      fontFamily: 'DMSans',
      fontFamilyFallback: ['Roboto', 'humanities', 'Mono', 'Favorite font'],
      // fontFeatures:
      fontSize: 22.5,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1.0,
      leadingDistribution: TextLeadingDistribution.proportional,
      letterSpacing: 0.1,
      overflow: TextOverflow.ellipsis,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
      // textBaseline:
      wordSpacing: 0.1,
    ),
    toolbarHeight: 55,

    //The default text style for the AppBar's leading, and actions widgets, but not its title.
    toolbarTextStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.white,
      decoration: TextDecoration.none,
      //TODO: decColor and decStyle not needed
      decorationColor: Colors.lightGreen,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 10,
      fontFamily: 'DMSans',
      fontFamilyFallback: ['Roboto', 'humanities', 'Mono', 'Favorite font'],
      // fontFeatures:
      fontSize: 22.5,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1.0,
      leadingDistribution: TextLeadingDistribution.proportional,
      letterSpacing: 0.1,
      overflow: TextOverflow.ellipsis,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
      // textBaseline:
      wordSpacing: 0.1,
    ),
  ),
  applyElevationOverlayColor: true,
  bannerTheme: MaterialBannerThemeData(
    backgroundColor: Colors.black,
    contentTextStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.white,
      decoration: TextDecoration.none,
      //TODO: decColor and decStyle not needed
      decorationColor: Colors.lightGreen,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 10,
      fontFamily: 'DMSans',
      fontFamilyFallback: ['Roboto', 'humanities', 'Mono', 'Favorite font'],
      // fontFeatures:
      fontSize: 18.5,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.0,
      leadingDistribution: TextLeadingDistribution.proportional,
      letterSpacing: 0.1,
      overflow: TextOverflow.ellipsis,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
      // textBaseline:
      wordSpacing: 0.1,
    ),
    elevation: 2,
    leadingPadding: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.all(10),

  ),
  bottomAppBarColor: Colors.white,
  bottomAppBarTheme: BottomAppBarTheme(
    color: Colors.white,
    elevation: 1,
    shape: CircularNotchedRectangle(),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.purple,
    elevation: 1,
    enableFeedback: true,
    // landscapeLayout:
    selectedIconTheme: IconThemeData(
      color: Colors.black,
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
    selectedItemColor: Colors.black,
    selectedLabelStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.black,
      decoration: TextDecoration.none,
      //TODO: decColor and decStyle not needed
      decorationColor: Colors.lightGreen,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 10,
      fontFamily: 'DMSans',
      fontFamilyFallback: ['Roboto', 'humanities', 'Mono', 'Favorite font'],
      // fontFeatures:
      fontSize: 18.5,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.0,
      leadingDistribution: TextLeadingDistribution.proportional,
      letterSpacing: -0.1,
      overflow: TextOverflow.ellipsis,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
      // textBaseline:
      wordSpacing: 0.1,
    ),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.shifting,
    unselectedIconTheme: IconThemeData(
      color: Colors.black26,
      opacity: 0.95,
      size: 25,
      shadows: [
        BoxShadow(
          color: Colors.white12,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
    ),
    unselectedItemColor: Colors.black26,
    unselectedLabelStyle: TextStyle(
      backgroundColor: Colors.transparent,
      color: Colors.black26,
      decoration: TextDecoration.none,
      //TODO: decColor and decStyle not needed
      decorationColor: Colors.lightGreen,
      decorationStyle: TextDecorationStyle.dotted,
      decorationThickness: 10,
      fontFamily: 'DMSans',
      fontFamilyFallback: ['Roboto', 'humanities', 'Mono', 'Favorite font'],
      // fontFeatures:
      fontSize: 14.5,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.0,
      leadingDistribution: TextLeadingDistribution.proportional,
      letterSpacing: -0.1,
      overflow: TextOverflow.ellipsis,
      shadows: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 40,
          blurStyle: BlurStyle.inner,
          spreadRadius: 20,
          offset: Offset(2, 2),
        ),
      ],
      // textBaseline:
      wordSpacing: 0.1,
    ),
  ),
  // bottomSheetTheme:
);
