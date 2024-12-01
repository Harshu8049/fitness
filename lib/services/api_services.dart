import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/exercise_model.dart';

class ApiService {
  static const String baseUrl = "https://api.api-ninjas.com/v1/exercises";
  static const String apiKey = "C0qi6hY5XYrBGAGdyf31HowW2Etj6XCtK9tK31ie";

  Future<List<Exercise>> fetchExercises() async {
    final response = await http.get(
      Uri.parse(baseUrl),
      headers: {
        "X-Api-Key": apiKey,
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Exercise.fromJson(item)).toList();
    } else {
      throw Exception("Failed to load exercises");
    }
  }
}
