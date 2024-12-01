import 'package:fitness/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteIcon extends StatelessWidget {
  final int index;

  const FavoriteIcon({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        final isFavorite = favoriteProvider.isFavorite(index);
        return GestureDetector(
          onTap: () => favoriteProvider.toggleFavorite(index),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
            size: 30,
          ),
        );
      },
    );
  }
}
