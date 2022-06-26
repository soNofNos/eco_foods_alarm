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
  void initState(){
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer){
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

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClockView(),
              Text(formattedTime, style: appThemeLight.primaryTextTheme.headline1,),
              Text(formattedDate, style: appThemeLight.primaryTextTheme.headline1,),

              Text("O'Clock", style: appThemeLight.primaryTextTheme.headline1,),
              SizedBox(
                height: 20,
              ),
              Text("Timezone", style: appThemeLight.primaryTextTheme.headline2,),
              Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(
                    width: 10,
                  ),
                  Text("UTC/GMT", style: appThemeLight.primaryTextTheme.headline2,),
                ],
              ),
              Text("O'Clock"),
              Text("O'Clock"),
              Text("O'Clock"),
            ],
          ),
        ),
      ),
    );
  }
}
