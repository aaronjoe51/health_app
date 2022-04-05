import 'package:flutter/material.dart';
import 'package:health_app/screens/old_screens/input_page.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/components/divider_component.dart';
import 'package:health_app/components/workout_sections.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Health App',
            style: kTitleTextStyle,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,),
        child: ListView(
          children: [
            //Goes to BMI page
            DividerWidget(
              //Calculate BMI
              childWidget: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> InputPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 250,
                    decoration: BoxDecoration(
                      color: kButtonColor,
                      image: null,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: const Center(
                      child: Text(
                        'Calculate BMI',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Section for ab workouts
            WorkoutSectionWidget(workoutType: 'abs'),
            const SizedBox(height: 20,),
            //Section for arm workouts
            WorkoutSectionWidget(workoutType: 'arms'),
          ],
        ),
      ),
    );
  }
}

/*class MainMenuPage extends StatefulWidget {

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Health App',
            style: kTitleTextStyle,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,),
        child: ListView(
          children: [
            //Goes to BMI page
            DividerWidget(
              //Calculate BMI
              childWidget: GestureDetector(
                onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> InputPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 250,
                    decoration: BoxDecoration(
                      color: kButtonColor,
                      image: null,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 80,
                    child: const Center(
                      child: Text(
                        'Calculate BMI',
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Section for ab workouts
            WorkoutSectionWidget(workoutType: 'abs'),
            const SizedBox(height: 20,),
            //Section for arm workouts
            WorkoutSectionWidget(workoutType: 'arms'),
          ],
        ),
      ),
    );
  }
}*/
