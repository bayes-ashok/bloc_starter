part of 'arithmetic_bloc.dart';

@immutable
sealed class ArithmeticEvent extends Equatable {
  const ArithmeticEvent();

  @override
  List<Object> get props => [];
}

class IncrementEvent extends ArithmeticEvent {
  final int first;
  final int second;

  const IncrementEvent(this.first, this.second);
}

class DecrementEvent extends ArithmeticEvent {
  final int first;
  final int second;

  const DecrementEvent(this.first, this.second);
}
