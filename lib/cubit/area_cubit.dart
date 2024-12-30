import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCubit extends Cubit<double> {
  AreaCubit() : super(0);

  void area(double radius) {
    emit((22 / 7) * radius * radius);
  }
}
