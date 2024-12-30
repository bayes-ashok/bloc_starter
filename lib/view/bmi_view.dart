import 'package:bloc_test/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiView extends StatelessWidget {
  const BmiView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 0;
    double weight = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Status Check'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                height = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Height in meter',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                weight = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter weight in kg',
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<BmiCubit, String>(
              builder: (context, state) {
                return Text(
                  'Result: $state',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<BmiCubit>().bmi(height, weight);
                },
                child: const Text('See status'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
