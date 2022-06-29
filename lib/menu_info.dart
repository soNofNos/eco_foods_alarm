import 'package:flutter/material.dart';

import 'enums.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String title;
  Icon? titleIcon;

  MenuInfo(this.menuType, {required this.title, this.titleIcon});
}
