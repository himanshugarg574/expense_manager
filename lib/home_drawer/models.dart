import 'package:flutter/material.dart';

class HomeDrawerItem {
  final String label;
  final IconData icon;
  bool selected;

  HomeDrawerItem({required this.label, required this.icon, required this.selected});
}

List<HomeDrawerItem> homeDrawerItems = [
  HomeDrawerItem(label: 'Homepage', icon: Icons.home_filled, selected: true),
  HomeDrawerItem(label: 'Settings', icon: Icons.settings, selected: false)
];