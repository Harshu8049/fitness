import 'package:fitness/controller/exercise_controller.dart';
import 'package:fitness/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExerciseController()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fitness App',
        home: HomeScreen(),
      ),
    );
  }
}
