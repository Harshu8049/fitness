import 'package:fitness/controller/exercise_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/exercise_model.dart';

class DetailsScreen extends StatelessWidget {
  final Exercise exercise;
  final int index;

  const DetailsScreen({super.key, required this.exercise, required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ExerciseController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          exercise.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(),
              ),
              Center(
                child: Hero(
                  tag: exercise.name,
                  child: ClipRRect(
                    child: Image.network(
                      controller.gifUrl[index],
                      width: 600,
                      height: 300,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exercise.name,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                _buildDetailRow(
                  icon: Icons.fitness_center,
                  label: 'Type',
                  value: exercise.type,
                  iconColor: Colors.blue,
                ),
                const SizedBox(height: 16),
                _buildDetailRow(
                  icon: Icons.directions_run,
                  label: 'Muscle',
                  value: exercise.muscle,
                  iconColor: Colors.green,
                ),
                const SizedBox(height: 16),
                _buildDetailRow(
                  icon: Icons.build,
                  label: 'Equipment',
                  value: exercise.equipment,
                  iconColor: Colors.orange,
                ),
                const SizedBox(height: 16),
                _buildDetailRow(
                  icon: Icons.thermostat,
                  label: 'Difficulty',
                  value: exercise.difficulty,
                  iconColor: Colors.red,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  exercise.instructions,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
    required Color iconColor,
  }) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            '$label: $value',
            style: const TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
