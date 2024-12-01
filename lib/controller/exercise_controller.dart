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

  List<String> gifUrl = [
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2xpbHo1Z3lnd29idHl0Z2oyNTlvODlwN2d0aTNzNzdueG9vYnFoeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/yBjUwriEYpFyE/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExazV4dWR6Z3pobGZzMzlvZWR1YTZsNXNqM3kxOHU4dHlkdWs2NG91cyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/moe59ctQV7XwY/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2w3dHBlZzdkOTVuYXdnazZrMG1nOGQzazAxaGIyM21oMHY3bWpnZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/fPWJGmS8Qizy8/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGpwenI0dTN5YWo1cnFrNGJ2bG5rYWpwbm5hNjZybmxub2p3dHhnbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Ug2yhOti0XmTK/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTlwbWdlOWc3aDU2enp5czV5YXh3MWdoaGY2MmxpNmpqNWE5dHcwOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Tk36HJp8SAq6A/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMXpiMm94eXppN3llODNuNDl0cGkzeHlneG8wbXlzdGJidHY4Z2djYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xTk9ZRHPeMzAO1njBC/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2xpbHo1Z3lnd29idHl0Z2oyNTlvODlwN2d0aTNzNzdueG9vYnFoeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/yBjUwriEYpFyE/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExazV4dWR6Z3pobGZzMzlvZWR1YTZsNXNqM3kxOHU4dHlkdWs2NG91cyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/moe59ctQV7XwY/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2w3dHBlZzdkOTVuYXdnazZrMG1nOGQzazAxaGIyM21oMHY3bWpnZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/fPWJGmS8Qizy8/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGpwenI0dTN5YWo1cnFrNGJ2bG5rYWpwbm5hNjZybmxub2p3dHhnbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Ug2yhOti0XmTK/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTlwbWdlOWc3aDU2enp5czV5YXh3MWdoaGY2MmxpNmpqNWE5dHcwOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Tk36HJp8SAq6A/giphy.gif',
    'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMXpiMm94eXppN3llODNuNDl0cGkzeHlneG8wbXlzdGJidHY4Z2djYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xTk9ZRHPeMzAO1njBC/giphy.gif',
  ];
}
