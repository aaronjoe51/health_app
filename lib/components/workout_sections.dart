import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/components/nav_buttons_components.dart';
import 'package:health_app/screens/workout_page.dart';

//Creates sections of each type of workouts in Main Menu
class WorkoutSectionWidget extends StatelessWidget {
  WorkoutSectionWidget({required this.workoutType});

  final String workoutType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            workoutType.toUpperCase(),
            style: kTitleTextStyle,
          ),
        ),
        //Workout button
        NavButtonWidget(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> WorkOutPage(
                  workoutType: workoutType,
                  difficulty: 1,
                  startingImg: 'images/easy_$workoutType.jpg',
                ),
              ),
            );
          },
          buttonTitle: '$workoutType BEGINNER',
          buttonImage: AssetImage('images/easy_$workoutType.jpg'),
          difficulty: 1,
        ),
        NavButtonWidget(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> WorkOutPage(
                workoutType: workoutType,
                difficulty: 2,
                startingImg: 'images/intermediate_$workoutType.jpeg',
              )),
            );
          },
          buttonTitle: '$workoutType INTERMEDIATE',
          buttonImage: AssetImage('images/intermediate_$workoutType.jpeg'),
          difficulty: 2,
        ),
        NavButtonWidget(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> WorkOutPage(
                workoutType: workoutType,
                difficulty: 3,
                startingImg: 'images/advanced_$workoutType.jpeg',
              )),
            );
          },
          buttonTitle: '$workoutType advanced',
          buttonImage: AssetImage('images/advanced_$workoutType.jpeg'),
          difficulty: 3,
        ),
      ],
    );
  }
}
