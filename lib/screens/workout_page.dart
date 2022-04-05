import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/workout_list_brain.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:health_app/components/old_components/bottom_button.dart';


class WorkOutPage extends StatefulWidget {
  WorkOutPage({required this.workoutType, required this.difficulty, required this.startingImg});
  final String workoutType;
  final int difficulty;
  final String startingImg;

  @override
  _WorkOutPageState createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  @override
  void initState(){
    super.initState();
    audioCache = AudioCache(fixedPlayer: audioPlayer);
  }
  @override
  void dispose(){
    super.dispose();
    audioPlayer.release();
    audioPlayer.dispose();
    audioCache.clearAll();
  }
  playMusic() async{
    await audioCache.play('sfx.mp3');
  }

  @override
  Widget build(BuildContext context) {
    int i = widget.difficulty;
    String diffType = (i == 1) ? 'BEGINNER': (i==2) ? 'INTERMEDIATE': 'ADVANCED';
    String type = widget.workoutType;
    String imgUrl = widget.startingImg;
    WorkoutListBrain workouts = WorkoutListBrain();
    workouts.setWorkoutList(type, widget.difficulty);
    type = type.toUpperCase();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Workout',
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.angleRight,
                size: 20,
                color: Colors.white,
              ),
              Text(
                '$diffType $type WORKOUT(3 SETS)',
                style: kWorkoutTextStyle,
              ),
            ],
          ),
          for(int i = 0; i < workouts.getListLength();i++)
            //Play sfx when an exercise is clicked
            GestureDetector(
              onTap: (){
                playMusic();
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  text: workouts.getWorkOutDesc(i),
                );
              },
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        workouts.getImg(i),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        workouts.getWorkOutName(i),
                        style: kWorkoutNameTextStyle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        workouts.getWorkOutReps(i),
                        style: kRepsTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          //Pops off to MainMenuPage
          BottomButtonWidget(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'GO BACK',
          ),
          /*GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.topLeft,
              width: 250,
              decoration: BoxDecoration(
                color: kButtonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              child: const Center(
                child: Text(
                  'GO BACK',
                  style: kButtonTextStyle,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

/*class WorkOutPage extends StatefulWidget {
  const WorkOutPage({Key? key}) : super(key: key);

  @override
  _WorkOutPageState createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Workout',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: ReorderableListView(
                shrinkWrap: true,
                children: <Widget>[
                  for (int index = 0; index < _items.length; index++)
                    ListTile(
                      key: Key('$index'),
                      tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                      title: Text('Item ${_items[index]}'),
                    ),
                ],
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final int item = _items.removeAt(oldIndex);
                    _items.insert(newIndex, item);
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}*/


