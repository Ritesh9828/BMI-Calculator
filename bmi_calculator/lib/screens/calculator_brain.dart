import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.Weight});
  final int height;
  final int Weight;

  double _bmi = 0;
  String calculateBMI() {
    _bmi = Weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWieght';
    }
  }

  String getInterpretation(){
     if (_bmi >= 25) {
      return 'You have higher than normal weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. keep it up!';
    } else {
      return 'You have less than normal body. Try to eat a bit more ';
    }
  }
}
