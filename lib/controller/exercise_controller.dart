import 'package:fitness/services/api_services.dart';
import 'package:flutter/foundation.dart';
import '../models/exercise_model.dart';

class ExerciseController with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Exercise> exercises = [];
  bool isLoading = false;

  Future<void> fetchExercises() async {
    isLoading = true;
    notifyListeners();

    try {
      exercises = await _apiService.fetchExercises();
    } catch (e) {
      debugPrint("Error fetching exercises: $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
