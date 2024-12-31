// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

part 'arithmetic_event.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      final result = event.first + event.second + 1;
      emit(result);
    });

    on<DecrementEvent>((event, emit) {
      final result = event.first - event.second;
      emit(result);
    });
  }
}
