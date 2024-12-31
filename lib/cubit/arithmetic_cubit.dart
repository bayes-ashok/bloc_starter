import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int> {
  ArithmeticCubit() : super(0);

  void add(int a, int b) {
    emit(a + b);
  }

  void sub(int a, int b) {
    emit(a - b);
  }

  void mul(int a, int b) {
    emit(a * b);
  }

  void decrement() {
    if (state == 98) {
      emit(state);
    } else {
      emit(state - 1);
    }
  }

  void reset() {
    emit(0);
  }
}
