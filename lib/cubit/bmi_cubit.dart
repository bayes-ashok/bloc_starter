import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<String> {
  BmiCubit() : super("");

  void bmi(double height, double weight) {
    double bmi = weight / (height * height);
    String status;
    if (bmi < 18.5) {
      status = "Underweight";
    } else if (bmi < 24.9) {
      status = "Normal Weight";
    } else if (bmi < 29.9) {
      status = "Overweight";
    } else if (bmi < 34.9) {
      status = "Obesity class I";
    } else if (bmi < 39.9) {
      status = "Obesity class II";
    } else {
      status = "Obesity class III";
    }
    emit(status);
  }
}
