import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._studentCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  // final ArithmeticCubitView _arithmeticCubit;
  final StudentCubit _studentCubit;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _counterCubit,
                child: CounterCubitView(),
              )),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _studentCubit,
                child: StudentCubitView(),
              )),
    );
  }

  // void openArithmeticView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => ArithmeticCubitView(),
  //     ),
  //   );
  // }
}
