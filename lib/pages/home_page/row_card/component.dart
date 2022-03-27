import '../../home_page/row_card/models.dart';
import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  const RowCard(this.rowData);
  final HomeRowData rowData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 1.5))),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        rowData.icon,
                        Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            rowData.heading,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      rowData.value.toStringAsFixed(2),
                      textAlign: TextAlign.right,
                      style: TextStyle(color: rowData.color),
                    )),
              ),
              const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ))
            ],
          )),
      onTap: () {
        if(rowData.routePage != null) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => rowData.routePage!));
        }
      },
    );
  }
}
