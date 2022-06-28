import 'dart:async';

import 'package:eco_foods_alarm/constants/fonts/custom_stop_watch_icons.dart';
import 'package:eco_foods_alarm/ui/themes/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../widgets/clock/clock_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var timeNow = DateTime.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        timeNow = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var formattedTime = DateFormat('HH : mm : ss').format(timeNow);
    var formattedDate = DateFormat('dd-MM-yyyy').format(timeNow);
    var timeZoneString = timeNow.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timeZoneString.startsWith('-')) {
      offsetSign = '+';
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: buildMenuButton('Alarm', Icon(Icons.alarm_outlined)),
                  ),
                  Expanded(
                      child: buildMenuButton(
                          'World Clock', Icon(Icons.watch_later_outlined))),
                  Expanded(
                      child: buildMenuButton(
                          'Stop Watch',
                          Icon(
                            CustomStopWatch.stopwatch,
                            size: 20,
                          ))),
                  Expanded(
                      child: buildMenuButton(
                          'Timer', Icon(Icons.watch_later_outlined))),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20),
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(alignment: Alignment.center, child: ClockView(size: MediaQuery.of(context).size.height/3,)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        formattedTime,
                        style: appThemeLight.primaryTextTheme.headline1,
                      ),
                      Text(
                        formattedDate,
                        style: appThemeLight.primaryTextTheme.headline1,
                      ),
                      Text(
                        "O'Clock",
                        style: appThemeLight.primaryTextTheme.headline1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Timezone",
                        style: appThemeLight.primaryTextTheme.headline2,
                      ),
                      Row(
                        children: [
                          Icon(Icons.language),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "UTC/GMT " + offsetSign + timeZoneString,
                            style: appThemeLight.primaryTextTheme.headline2,
                          ),
                        ],
                      ),
                      Text("O'Clock"),
                      Text("O'Clock"),
                      Text("O'Clock"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buildMenuButton(String title, Icon titleIcon) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        children: [
          // FlutterLogo(),
          titleIcon,
          SizedBox(
            height: 2.5,
          ),
          Center(
              child:
                  Text(title, style: appThemeLight.primaryTextTheme.headline4)),
        ],
      ),
    );
  }
}
