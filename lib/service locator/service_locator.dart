import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/cubit/area_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/bmi_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/si_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initCubit();
}

void _initCubit() {
  serviceLocator.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLocator
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerLazySingleton<StudentCubit>(() => StudentCubit());
  serviceLocator.registerLazySingleton<SiCubit>(() => SiCubit());
  serviceLocator.registerLazySingleton<AreaCubit>(() => AreaCubit());
  serviceLocator.registerLazySingleton<BmiCubit>(() => BmiCubit());
  serviceLocator.registerLazySingleton<CounterBloc>(() => CounterBloc());
  serviceLocator.registerLazySingleton<ArithmeticBloc>(() => ArithmeticBloc());

  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
