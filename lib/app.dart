import 'package:bloc_test/cubit/area_cubit.dart';
import 'package:bloc_test/cubit/bmi_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/si_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/dashboard_view.dart';
// import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(create: (context) => SiCubit()),
        BlocProvider(create: (context) => AreaCubit()),
        BlocProvider(create: (context) => BmiCubit()),
        BlocProvider(
            create: (context) => DashboardCubit(
                  context.read<CounterCubit>(),
                  context.read<CounterCubit>(),
                  context.read<StudentCubit>(),
                  context.read<SiCubit>(),
                  context.read<AreaCubit>(),
                  context.read<BmiCubit>(),
                ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        home: DashboardView(),
      ),
    );
  }
}
