import 'package:flutter/material.dart';

import 'enums.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String title;
  IconData? titleIcon;

  MenuInfo(this.menuType, {required this.title, this.titleIcon});

  updateMenu(MenuInfo menuInfo){
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.titleIcon = menuInfo.titleIcon;

    notifyListeners();
  }
}
