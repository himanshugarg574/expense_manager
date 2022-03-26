import 'package:expense_manager/home_page/row_card/component.dart';
import 'package:expense_manager/home_page/row_card/models.dart';
import 'package:flutter/material.dart';

import '../pages/expenses/component.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);

  final List<HomeRowData> homeRows = [
    HomeRowData(Icons.account_balance_wallet, 'Expenses', Colors.red.shade300, 'expense', const ExpensesPage()),
    HomeRowData(Icons.calendar_month, 'Bills', Colors.lightBlue.shade300),
    HomeRowData(Icons.attach_money, 'Income', Colors.green.shade300),
    HomeRowData(Icons.account_balance, 'Balance', Colors.deepPurple.shade300)
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = homeRows.map((e) => RowCard(e)).toList();
    return ListView(children: rows);
  }
}
