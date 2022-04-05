import 'package:flutter/material.dart';
import '../../constants.dart';

class BottomButtonWidget extends StatelessWidget {
  BottomButtonWidget({required this.onTap,required this.buttonTitle});

  final void Function() onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 5,),
        padding: EdgeInsets.only(bottom: 10,),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}