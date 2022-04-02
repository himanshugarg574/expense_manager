import 'package:expense_manager/pages/category_template/component.dart';
import 'package:expense_manager/pages/category_template/models.dart';
import 'package:expense_manager/pages/text_field/component.dart';
import 'package:flutter/material.dart';

class AddNewExpense extends StatelessWidget {
  const AddNewExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryTemplate(
        pageHeading: 'Add Expense',
        body: _getForm(context),
        actions: [
          CategoryTemplateAction(icon: const Icon(Icons.save), onPressed: () {})
        ]);
  }

  Widget _getForm(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double desiredWidth = width * 0.4;

    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: desiredWidth,
                child: const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: StyledTextFormField(label: 'Testing'))),
            SizedBox(
              width: desiredWidth,
              child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 8.0),
                  child: StyledTextFormField(label: 'seconded'),
                  ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: desiredWidth,
                child: const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 8.0),
                child: StyledTextFormField(label: 'third'),
                ))
          ],
        )
      ],
    );
  }
}
