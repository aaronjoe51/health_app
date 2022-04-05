import 'package:flutter/material.dart';
import 'package:health_app/screens/old_screens/results_page.dart';
import 'package:health_app/calculator_brain.dart';
import 'package:health_app/components/old_components/bottom_button.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/components/old_components/reusable_card.dart';
import 'package:health_app/components/old_components/icon_widget.dart';

enum Gender{Male, Female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Male;
  int height = 180;
  int weight = 60;
  int age = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Genders
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    colour: selectedGender == Gender.Male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconWidgets(gender: 'Male', icon: kMars,),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    colour:selectedGender == Gender.Female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: IconWidgets(icon: kVenus, gender: 'Female',),
                  ),
                ),
              ],
            ),
          ),
          //Height Slider
          Expanded(
            child: ReusableCard(
              colour:kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kHeightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8DE98),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29eB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newVal){
                        print(newVal);
                        setState(() {
                          height = newVal.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: (){},
            ),
          ),
          //Weight Slider
          Expanded(
            child: ReusableCard(
              colour:kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        weight.toString(),
                        style: kHeightTextStyle,
                      ),
                      Text(
                        'kg',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8DE98),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29eB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: weight.toDouble(),
                      min: 30.0,
                      max: 150.0,
                      onChanged: (double newVal){
                        print(newVal);
                        setState(() {
                          weight = newVal.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              onPress: (){},
            ),
          ),
          BottomButtonWidget(
            buttonTitle: 'Calculate',
            onTap: (){
              print(height);
              print(weight);
              CalculatorBrain calcBrain = CalculatorBrain(height: height, weight: weight,);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>ResultsPage(
                  bmiResult: calcBrain.calculateBMI(),
                  resultText: calcBrain.getResult(),
                  interpretation: calcBrain.getInterpretation(),
                ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}