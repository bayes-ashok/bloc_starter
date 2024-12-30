import 'package:bloc_test/cubit/si_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterest extends StatelessWidget {
  const SimpleInterest({super.key});

  @override
  Widget build(BuildContext context) {
    double principal = 0;
    double rate = 0;
    double time = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principal = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Principal Amount',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate of Interest (%)',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time (in years)',
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<SiCubit, double>(
              builder: (context, state) {
                return Text(
                  'Interest: $state',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SiCubit>().calculate(principal, time, rate);
                },
                child: const Text('Calculate Simple Interest'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
