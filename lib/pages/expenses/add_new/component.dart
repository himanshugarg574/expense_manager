import 'package:expense_manager/pages/category_template/component.dart';
import 'package:expense_manager/pages/category_template/models.dart';
import 'package:flutter/material.dart';

class AddNewExpense extends StatelessWidget {
  const AddNewExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryTemplate(
        pageHeading: 'Add Expense', body: Container(), actions: [
          CategoryTemplateAction(icon: const Icon(Icons.save), onPressed: () {

          })
    ]);
  }
}
