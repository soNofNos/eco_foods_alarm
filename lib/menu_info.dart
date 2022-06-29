import 'package:flutter/material.dart';

import 'enums.dart';

class MenuInfo {
  MenuType menuType;
  String title;
  Icon titleIcon;

  MenuInfo(this.menuType, {required this.title, required this.titleIcon});
}
