import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final firstController = TextEditingController();
    final secondController = TextEditingController();
    int first = 0;
    int second = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text(
                    'Result: $state',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    first = int.parse(firstController.text);
                    second = int.parse(secondController.text);
                    context.read<CounterCubit>().add(first, second);
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
                    first = int.parse(firstController.text);
                    second = int.parse(secondController.text);
                    context.read<CounterCubit>().sub(first, second);
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    first = int.parse(firstController.text);
                    second = int.parse(secondController.text);
                    context.read<CounterCubit>().mul(first, second);
                  },
                  child: const Text('Multiply'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
