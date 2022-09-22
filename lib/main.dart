import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'favorite.dart';
import 'home.dart';

void main() {
  runApp(Favorite(isFavorite: MyInheritedData(isFavorite: false), child: const Fooderlich()));
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: const Home()
    );
  }
}
