import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'myInheritedW.dart';

void main() {
  runApp(MyInheritedW(
      appData: MyInheritedData(isFavorite: false), child: const Fooderlich()));
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(title: 'Fooderlich', theme: theme, home: const Home());
  }
}
