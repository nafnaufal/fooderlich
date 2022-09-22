import 'package:flutter/material.dart';

class Favorite extends InheritedWidget{
  final MyInheritedData isFavorite;
  final Widget child;

  const Favorite({
      Key? key, 
      required this.isFavorite, 
      required this.child
    })
      : super(
          key: key, 
          child: child);


  static Favorite? of(BuildContext context) =>
    context.dependOnInheritedWidgetOfExactType<Favorite>();

  @override
  bool updateShouldNotify(Favorite oldWidget){
    return isFavorite != oldWidget.isFavorite;
  }
}

class MyInheritedData {
  late bool isFavorite;

  MyInheritedData({required this.isFavorite});

  changeBackgroundColor() {
    isFavorite = !isFavorite;
  }
}
