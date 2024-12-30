import 'package:bloc_test/cubit/area_cubit.dart';
import 'package:bloc_test/cubit/bmi_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/si_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/area_of_circle.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/bmi_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/simple_interest.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._siCubit,
    this._areaCubit,
    this._bmiCubit,
  ) : super(null);

  final CounterCubit _counterCubit;
  final CounterCubit _arithmeticCubit; //as arithmetic is done in counter only
  final StudentCubit _studentCubit;
  final SiCubit _siCubit;
  final AreaCubit _areaCubit;
  final BmiCubit _bmiCubit;

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

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _arithmeticCubit,
                child: ArithmeticCubitView(),
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

  void openSiView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _siCubit,
                child: SimpleInterest(),
              )),
    );
  }

  void openAreaView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _areaCubit,
                child: AreaOfCircle(),
              )),
    );
  }

  void openBMIView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _bmiCubit,
                child: BmiView(),
              )),
    );
  }
}
