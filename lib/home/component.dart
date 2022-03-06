import 'package:flutter/material.dart';

import '../home_page/component.dart';
import '../home_drawer/component.dart';
import '../settings_page/component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _activeScreen = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Manager'),
      ),
      drawer: HomeDrawer(itemSelectedCallback: (val) => setState(() => _activeScreen = val),),
      body: const Center(
        child: HomePage(),
      ),
    );
  }
}
