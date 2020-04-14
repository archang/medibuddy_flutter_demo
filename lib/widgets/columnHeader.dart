import 'package:flutter/material.dart';

class ColumnHeaderWidget extends StatelessWidget {
  final String title;

  ColumnHeaderWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 25
      )
    );
  }
}
