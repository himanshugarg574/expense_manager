import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: const [
            Expanded(child: Text('Income', textAlign: TextAlign.center)),
            Expanded(child: Text('Expense', textAlign: TextAlign.center)),
            Expanded(child: Text('Balance', textAlign: TextAlign.center)),
          ],
        ),
        getBox(height: 50, rowContent: const [
          Expanded(child: Text('Current Balance')),
          Expanded(child: Text('Expense', textAlign: TextAlign.right)),
        ]),
        ...getDatedBoxes()
      ],
    );
  }

  List<SizedBox> getDatedBoxes() => [
    getBox(rowContent: [])
  ];

  SizedBox getBox({double height = 75, required List<Widget> rowContent}) {
    return SizedBox(
        height: height,
        child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: rowContent,
              ),
            )));
  }
}
