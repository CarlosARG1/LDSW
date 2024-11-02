import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MoviesCatApp());
}

class MoviesCatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoviesCat',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
