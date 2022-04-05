import 'package:flutter/material.dart';
import '../../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.childIcon, required this.onPressed});

  final IconData childIcon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(childIcon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),

    );
  }
}
