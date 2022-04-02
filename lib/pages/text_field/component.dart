import 'package:flutter/material.dart';

class StyledTextFormField extends StatelessWidget {
  const StyledTextFormField({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: label),
    );
  }
}
