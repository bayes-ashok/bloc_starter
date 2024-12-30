import 'package:flutter_bloc/flutter_bloc.dart';

class SiCubit extends Cubit<double> {
  SiCubit() : super(0);

  void calculate(double p, double t, double r) {
    double si = (p * t * r) / 100;
    emit(si);
  }
}
