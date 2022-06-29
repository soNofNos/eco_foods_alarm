import 'package:eco_foods_alarm/constants/fonts/custom_stop_watch_icons.dart';
import 'package:eco_foods_alarm/enums.dart';
import 'package:flutter/material.dart';

import 'menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.alarm,
  title: "Alarm",titleIcon: Icons.alarm_outlined),

  MenuInfo(MenuType.alarm,
    title: "World Clock",titleIcon: Icons.watch_later_outlined),

  MenuInfo(MenuType.alarm,
    title: "Stop Watch",titleIcon: CustomStopWatch.stopwatch,
      ),

  MenuInfo(MenuType.alarm,
    title: "Timer",titleIcon: Icons.watch_later_outlined),
];
