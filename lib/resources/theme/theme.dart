import 'package:flutter/material.dart';
// Общие параметры

const colorSiren = Color.fromARGB(255, 91, 111, 223);
const colorPurpl = Color.fromARGB(255, 119, 59, 205);
const colorSirenDarker = Color.fromARGB(255, 106, 61, 232);
List<Color> gradient = [  colorSirenDarker,colorPurpl, colorSiren];
// Тема приложения

final thememain = ThemeData(
  // TODO: Добалять по мере создания
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 30),
  ),
);
