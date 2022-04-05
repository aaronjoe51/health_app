import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavButtonWidget extends StatelessWidget {
  NavButtonWidget({required this.onTap, required this.buttonTitle,required this.buttonImage,required this.difficulty});

  final void Function() onTap;
  final String buttonTitle;
  final AssetImage buttonImage;
  final int difficulty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: kNavButtonColor,
            image: DecorationImage(
              image: buttonImage,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.dstATop,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    buttonTitle.toUpperCase(),
                    style: kWorkoutTextStyle,
                  ),
                ),
                const SizedBox(height: 70,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      for(int i =0; i<difficulty; i++)
                        Icon(FontAwesomeIcons.bolt,color: Colors.blue.shade900,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}