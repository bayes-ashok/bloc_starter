// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 2);
    });

    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });

    on<ResetEvent>((event, emit) {
      emit(0);
    });
  }
}
