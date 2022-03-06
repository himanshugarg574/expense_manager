import './models.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: settingsPageItems.length,
      itemBuilder: (context, i) {
        return ListTile(title: Text(settingsPageItems[i]),);
      }
    );
  }
}
