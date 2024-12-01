import 'package:flutter/material.dart';

class FavoriteProvider with ChangeNotifier {
  final Map<int, bool> _favorites = {};

  bool isFavorite(int index) => _favorites[index] ?? false;

  void toggleFavorite(int index) {
    _favorites[index] = !isFavorite(index);
    notifyListeners();
  }
}
