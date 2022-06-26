import 'dart:async';

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
if(!timeZoneString.startsWith('-')){
  offsetSign = '+';
}
print(timeZoneString);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
MaterialButton(onPressed: (){}, child: Column(
  children: [
    FlutterLogo(),
          Text('World Clock', style: appThemeLight.textTheme.headline3),
  ],
),)
                ],
              ),
            ),
            Divider(),
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                          child: ClockView()),
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
}
