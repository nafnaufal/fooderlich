import 'package:flutter/material.dart';

class MyInheritedW extends InheritedWidget {
  final MyInheritedData appData;
  final Widget child;
  const MyInheritedW(
      {Key? key, required this.appData, required this.child})
      : super(key: key, child: child);

  static MyInheritedW? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyInheritedW>();

  @override
  bool updateShouldNotify(covariant MyInheritedW oldWidget) {
    return true;
  }
}

class MyInheritedData {
  late bool isFavorite;

  MyInheritedData({required this.isFavorite});

  changeColor() {
    isFavorite = !isFavorite;
  }
}
