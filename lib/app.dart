// import 'package:bloc_test/cubit/area_cubit.dart';
// import 'package:bloc_test/cubit/bmi_cubit.dart';
// import 'package:bloc_test/cubit/counter_cubit.dart';
// import 'package:bloc_test/cubit/dashboard_cubit.dart';
// import 'package:bloc_test/cubit/si_cubit.dart';
// import 'package:bloc_test/cubit/student_cubit.dart';
// import 'package:bloc_test/service%20locator/service_locator.dart';
// import 'package:bloc_test/view/dashboard_view.dart';
// import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/service%20locator/service_locator.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    // providers: [
    //   BlocProvider(
    //     create: (context) => serviceLocator<CounterCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<CounterCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<StudentCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<SiCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<AreaCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<BmiCubit>(),
    //   ),
    //   BlocProvider(
    //     create: (context) => serviceLocator<DashboardCubit>(),
    //   ),
    // ],
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}
