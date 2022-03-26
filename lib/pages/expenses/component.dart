import 'package:expense_manager/pages/category_template/component.dart';
import 'package:expense_manager/pages/category_template/models.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryTemplate(
        pageHeading: 'Expenses',
        actions: [
          CategoryTemplateAction(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined))
        ],
        body: Center(
            child: ElevatedButton(
                child: const Text('Expenses Button'),
                onPressed: () {
                  Navigator.pop(context);
                })));
  }
}
