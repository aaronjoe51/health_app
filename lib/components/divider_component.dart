import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  DividerWidget({required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 5,
          ),
        ),
        //Calculate BMI
        childWidget,
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 5,
          ),
        ),
      ],
    );
  }
}
