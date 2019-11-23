import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  static const overweight = 25;
  static const normal = 18.5;

  final int height;
  final int weight;

  double _bmi;

  bool _isOverweight() {
    return _bmi >= overweight ? true : false;
  }

  bool _isNormal() {
    return _bmi > normal ? true : false;
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }


  String getResult() {
    if (_isOverweight()) {
      return 'Overweight';
    } else if (_isNormal()) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_isOverweight()) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_isNormal()) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
