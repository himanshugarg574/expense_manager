import 'package:flutter/material.dart';

class HomeRowData {
  late Icon icon;
  late String heading;
  late double value;
  late Color color;
  late String? routeName;
  late Widget? routePage;

  HomeRowData(IconData iconData, this.heading, this.color, [this.routeName, this.routePage]) {
    icon = Icon(iconData, color: color);
    value = 0.00;
  }
}