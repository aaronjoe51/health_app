import 'package:flutter/material.dart';

class IconWidgets extends StatelessWidget {
  IconWidgets({required this.gender, required this.icon});

  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        ),
      ],
    );
  }
}