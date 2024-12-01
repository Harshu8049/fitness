import 'package:flutter/material.dart';
import '../models/exercise_model.dart';

class DetailsScreen extends StatelessWidget {
  final Exercise exercise;

  const DetailsScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.fitness_center, color: Colors.blue),
                const SizedBox(width: 8),
                Text('Type: ${exercise.type}', style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.directions_run, color: Colors.green),
                const SizedBox(width: 8),
                Text('Muscle: ${exercise.muscle}', style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.build, color: Colors.orange),
                const SizedBox(width: 8),
                Text('Equipment: ${exercise.equipment}', style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.thermostat, color: Colors.red),
                const SizedBox(width: 8),
                Text('Difficulty: ${exercise.difficulty}', style: const TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Instructions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              exercise.instructions,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
