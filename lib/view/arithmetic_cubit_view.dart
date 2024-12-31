import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final firstController = TextEditingController();
    final secondController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Bloc'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider<ArithmeticBloc>(
          create: (context) => ArithmeticBloc(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter First No',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter First no';
                    } else if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Second No',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter second no';
                    } else if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                BlocBuilder<ArithmeticCubit, int>(
                  builder: (context, state) {
                    return Text(
                      'Result: $state',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        final first = int.parse(firstController.text);
                        final second = int.parse(secondController.text);
                        context.read<ArithmeticCubit>().add(first, second);
                      }
                    },
                    child: const Text('Addition'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        final first = int.parse(firstController.text);
                        final second = int.parse(secondController.text);
                        context.read<ArithmeticCubit>().sub(first, second);
                      }
                    },
                    child: const Text('Subtraction'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        final first = int.parse(firstController.text);
                        final second = int.parse(secondController.text);
                        context.read<ArithmeticCubit>().mul(first, second);
                      }
                    },
                    child: const Text('Multiply'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
