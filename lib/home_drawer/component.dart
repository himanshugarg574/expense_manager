import 'package:flutter/material.dart';
import './models.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key, required this.itemSelectedCallback}) : super(key: key);

  final Function(String) itemSelectedCallback;

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: homeDrawerItems.length + 1,
        itemBuilder: (context, i) {
          i = i - 1;
          if (i == -1) {
            return const DrawerHeader(
              child: Text('Testing'),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            );
          }
          return _buildDrawerRow(context, homeDrawerItems[i], widget.itemSelectedCallback);
        },
      ),
    );
  }

  Widget _buildDrawerRow(BuildContext context, HomeDrawerItem item, Function(String) itemSelectedCallback) {
    return ListTile(
      title: Text(
          item.label,
        style: TextStyle(
          color: item.selected ? Theme.of(context).primaryColor : Colors.black
        ),
      ),
      leading: Icon(item.icon),
      onTap: () {
        item.selected = true;
        homeDrawerItems
            .where((element) => element != item)
            .forEach((element) { element.selected = false; });
        itemSelectedCallback(item.label);
        Navigator.pop(context);
      },
    );
  }
}
