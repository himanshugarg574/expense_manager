import 'package:expense_manager/pages/category_template/models.dart';
import 'package:flutter/material.dart';

class CategoryTemplate extends StatelessWidget {
  const CategoryTemplate({
    Key? key,
    required this.pageHeading,
    required this.body,
    required this.actions,
  }) : super(key: key);

  final String pageHeading;
  final List<CategoryTemplateAction> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageHeading),
        centerTitle: true,
        actions: actions.map((e) => IconButton(onPressed: e.onPressed, icon: e.icon)).toList(),
      ),
      body: body,
    );
  }
}
