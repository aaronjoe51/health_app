import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.weight, required this.height});

  final int weight;
  final int height;

  double _bmi=0;
  String calculateBMI(){
    _bmi = weight/pow(height/100,2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi >18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have  higher than normal body weight.';
    }
    else if(_bmi >18.5){
      return 'You have a healthy weight.';
    }
    else{
      return 'You need to eat more';
    }
  }
}