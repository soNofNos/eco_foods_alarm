import 'package:eco_foods_alarm/sample_screen.dart';
import 'package:eco_foods_alarm/ui/themes/app_theme_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco Foods Alarm',
      theme: appThemeLight,
      home: const SamplePage(),
    );
  }
}
