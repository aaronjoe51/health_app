
import 'workout_list.dart';
class WorkoutListBrain{

  List<WorkoutList> _workout =[];

  void setWorkoutList(String workoutType, int difficulty){
    if(workoutType.toUpperCase() == 'ABS'){
      if(difficulty == 1){
        _workout = [
          WorkoutList('Jumping Jacks', '20 seconds', 'images/jumping-jack.gif',
          '1 : a conditioning exercise performed from a standing position by jumping to a position with legs spread and arms raised and then to the original position. 2 : a toy figure of a man jointed and made to jump or dance by means of strings or a sliding stick.'),
          WorkoutList('Abdominal Crunches', 'x10 reps', 'images/ab-crunches.gif',
          'An abdominal crunch is an exercise to strengthen the abdomen by contracting it to flex your spine and pull your torso off the floor. To perform an abdominal crunch lie flat on the floor with your knees bent so that the soles of your feet are flat on the floor.'),
          WorkoutList('Russian Twists', 'x20 reps', 'images/russian_twists.gif',
          'Sit with bent knees and your feet pressing firmly into the floor, holding your hands next to your chest. Sit back slightly, keeping your spine straight. Exhale as you twist to the left, punching your right arm over to the left side. Inhale back to center, and then do the opposite side.'),
          WorkoutList('Mountain Climbers', 'x16 reps', 'images/mountain.gif',
          'Start in high plank position, wrists under shoulders, core engaged so body forms a straight line from heels to ankles. Jump both legs in between hands, pause, then jump back to starting position. Repeat. To make the move more challenging, jump both legs toward hands, landing with feet outside hands.'),
          WorkoutList('Heel Touch', 'x30 reps', 'images/heel-touch.gif',
          'Heel touches, also known as ankle taps or alternate heel touches, are a core exercise that uses your bodyweight to activate muscles along your midsection. Perform heel touches by lying face-up on an exercise mat. Keep your back flat and bend your knees to a 90-degree angle with your feet firmly planted on the floor'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif',
          'Rest your muscles'),
        ];
      }else if(difficulty == 2){
        _workout = [
          WorkoutList('Jumping Jacks', '20 seconds', 'images/jumping-jack.gif',
          '1 : a conditioning exercise performed from a standing position by jumping to a position with legs spread and arms raised and then to the original position. 2 : a toy figure of a man jointed and made to jump or dance by means of strings or a sliding stick.'),
          WorkoutList('Heel Touch', 'x26 reps', 'images/heel-touch.gif',
          'Heel touches, also known as ankle taps or alternate heel touches, are a core exercise that uses your bodyweight to activate muscles along your midsection. Perform heel touches by lying face-up on an exercise mat. Keep your back flat and bend your knees to a 90-degree angle with your feet firmly planted on the floor'),
          WorkoutList('Crossover Crunch', 'x20 reps', 'images/crossover.gif',
          'Place your hands behind your head, elbows out. Inhale as you cross your left leg over your right resting your left ankle your right knee. Exhale as you contract your abdominal muscles and slowly raise your upper body off the mat'),
          WorkoutList('Mountain Climbers', 'x20 reps', 'images/mountain.gif',
          'Start in high plank position, wrists under shoulders, core engaged so body forms a straight line from heels to ankles. Jump both legs in between hands, pause, then jump back to starting position. Repeat. To make the move more challenging, jump both legs toward hands, landing with feet outside hands.'),
          WorkoutList('Planking', '45 seconds', 'images/planking.gif',
          'The plank, or planking, is an exercise that involves your core muscles, improving your strength, balance and endurance. The exercise is so-named because, when done properly, you straighten your entire body and maintain it rigidly, just like a plank of wood.'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif',
          'Rest your muscles'),
        ];
      }else{
        _workout = [
          WorkoutList('Jumping Jacks', '20 seconds', 'images/jumping-jack.gif',
          '1 : a conditioning exercise performed from a standing position by jumping to a position with legs spread and arms raised and then to the original position. 2 : a toy figure of a man jointed and made to jump or dance by means of strings or a sliding stick.'),
          WorkoutList('Sit-ups', 'x20 reps', 'images/situps.gif',
          'An exercise in which a person lies flat on the back, lifts the torso to a sitting position, and then lies flat again without changing the position of the legs: formerly done with the legs straight but now usually done with the knees bent.'),
          WorkoutList('Abdominal Crunches', 'x30 reps', 'images/ab-crunches.gif',
          'An abdominal crunch is an exercise to strengthen the abdomen by contracting it to flex your spine and pull your torso off the floor. To perform an abdominal crunch lie flat on the floor with your knees bent so that the soles of your feet are flat on the floor.'),
          WorkoutList('Bicycle Crunches', 'x24 reps', 'images/bicycle.gif',
          'The bicycle crunch is a no-equipment, beginner-level ab exercise that you can do at home, at the gym, and even on-the-go while traveling. It is done while lying on the ground on your back, and it involves twisting from side to side.'),
          WorkoutList('Planking', '1 minute', 'images/planking.gif',
          'The plank, or planking, is an exercise that involves your core muscles, improving your strength, balance and endurance. The exercise is so-named because, when done properly, you straighten your entire body and maintain it rigidly, just like a plank of wood.'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif',
          'Rest your muscles'),
        ];
      }
    }
    else{
      if(difficulty == 1){
        _workout = [
          WorkoutList('Arm Raises', '30 seconds', 'images/arm-raises.gif',
          'Stand with feet shoulder length apart and keep your hands at your side with palms facing forward, raise your arms up and out to the sides so that your arms are at shoulder height. Then lower them to starting position, with a fluid and constant motion until you have completed the set.'),
          WorkoutList('Side Arm Raise', '30 seconds', 'images/sideraise.gif',
          'Raise both arms, to the side of the body to shoulder level. Keep shoulder blades retracted and depressed throughout the exercise. Do not allow the low-back to arch. Hold. Return arms slowly back to the side of the body and repeat.'),
          WorkoutList('Triceps Dips', 'x10 reps', 'images/tricepdips.gif',
          'Tricep dips can be performed on parallel bars at your gym or even on a playground. You hold your entire body weight up with your arms extended and feet hovering over the floor, ankles crossed. Lower your body until your elbows reach a 90-degree angle before returning to your starting position.'),
          WorkoutList('Diamond Push-ups', 'x6 reps', 'images/diamond.gif',
          'The Diamond Push-up is a more difficult variation of the classic push-up, with your hands coming together to make a diamond shape. Popular in the army, this exercise helps build chest and abdominal muscles in addition to arm muscles.'),
          WorkoutList('Chest Press Pulse', '16 seconds', 'images/presspulse.jfif',
          'Place your forearms together and then clasp your hands. Lift your arms up so that your elbows are at shoulder height. Press your forearms together and as you do raise you arms up 3-4 inches and then back down. Continue moving your arms up and down for the desired amount of reps.'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif',
          'Rest your muscles'),
        ];
      }else if(difficulty == 2){
        _workout = [
          WorkoutList('Arm Circles Clockwise', '30 seconds', 'images/armcircles.gif',
          'Stand with your feet shoulder-width apart and extend your arms parallel to the floor. Circle your arms forward using small controlled motions, gradually making the circles bigger until you feel a stretch in your triceps. Reverse the direction of the circles after about 10 seconds.'),
          WorkoutList('Arm Circles Counter-Clockwise', '30 seconds', 'images/armcircles.gif',
          'Stand with your feet shoulder-width apart and extend your arms parallel to the floor. Circle your arms forward using small controlled motions, gradually making the circles bigger until you feel a stretch in your triceps. Reverse the direction of the circles after about 10 seconds.'),
          WorkoutList('Military Push Ups', 'x12 reps', 'images/military.gif',
          'In popular terms, a military push-up is commonly described as a push-up that emphasizes the triceps by keeping the elbows tucked to the sides. This would likely indicate a narrower spacing of hands than with a standard push-up, which usually assumes that the hands are spaced at roughly shoulder width apart.'),
          WorkoutList('Push-up & Rotation', 'x12 reps', 'images/pushuprotation.gif',
          'Push-up with rotation is a functional training exercise that integrates two pillars of natural human movement: pushing/ pulling and rotation. It works the muscles of the chest, anterior deltoid and triceps while demanding the stabilisation strength of both shoulder blades and spine'),
          WorkoutList('Burpees', 'x8 reps', 'images/burpee.gif',
          'A burpee is essentially a two-part exercise: a pushup followed by a leap in the air. Doing several burpees in a row can be tiring, but this versatile exercise may be worth the payoff, especially if you are looking for a way to build strength and endurance, while burning calories, and boosting your cardio fitness.'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif','Rest your muscles'),
        ];
      }else{
        _workout = [
          WorkoutList('Arm Circles Clockwise', '30 seconds', 'images/armcircles.gif',
          'Stand with your feet shoulder-width apart and extend your arms parallel to the floor. Circle your arms forward using small controlled motions, gradually making the circles bigger until you feel a stretch in your triceps. Reverse the direction of the circles after about 10 seconds.'),
          WorkoutList('Arm Circles Counter-Clockwise', '30 seconds', 'images/armcircles.gif',
          'Stand with your feet shoulder-width apart and extend your arms parallel to the floor. Circle your arms forward using small controlled motions, gradually making the circles bigger until you feel a stretch in your triceps. Reverse the direction of the circles after about 10 seconds.'),
          WorkoutList('Planking', '30 seconds', 'images/planking.gif',
          'The plank, or planking, is an exercise that involves your core muscles, improving your strength, balance and endurance. The exercise is so-named because, when done properly, you straighten your entire body and maintain it rigidly, just like a plank of wood.'),
          WorkoutList('Burpees', 'x16 reps', 'images/burpee.gif',
          'A burpee is essentially a two-part exercise: a pushup followed by a leap in the air. Doing several burpees in a row can be tiring, but this versatile exercise may be worth the payoff, especially if you are looking for a way to build strength and endurance, while burning calories, and boosting your cardio fitness.'),
          WorkoutList('Military Push Ups', 'x14 reps', 'images/military.gif',
          'In popular terms, a military push-up is commonly described as a push-up that emphasizes the triceps by keeping the elbows tucked to the sides. This would likely indicate a narrower spacing of hands than with a standard push-up, which usually assumes that the hands are spaced at roughly shoulder width apart.'),
          WorkoutList('Rest', '1 minute', 'images/rest.gif', 'Rest your muscles'),
        ];
      }
    }
  }


  String getWorkOutName(int i){
    return _workout[i].workoutName;
  }
  String getWorkOutDesc(int i){
    return _workout[i].description;
  }
  String getWorkOutReps(int i){
    return _workout[i].reps;
  }
  String getImg(int i){
    return _workout[i].img;
  }
  int getListLength(){
    return _workout.length;
  }
}