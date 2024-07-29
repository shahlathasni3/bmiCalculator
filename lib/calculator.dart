import 'dart:math';


class Calculator {

  Calculator({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Over Weight';
    }
    else if(_bmi >= 10.5){
      return 'Normal';
    }
    else{
      return 'Under Weight';
    }
  }

  String getInterPretation(){
    if(_bmi >= 25){
      return 'You have a higher body weight than others, You can do more exercise.';
    }
    else if(_bmi >= 10.5){
      return 'You have a normal body weight, Great job.';
    }
    else{
      return 'You have a lower body weight, You can eat more';
    }
  }
}