import 'package:bloc_test/cubit/area_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircle extends StatelessWidget {
  const AreaOfCircle({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Radius',
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaCubit, double>(
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
                  context.read<AreaCubit>().area(radius);
                },
                child: const Text('Calculate Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
