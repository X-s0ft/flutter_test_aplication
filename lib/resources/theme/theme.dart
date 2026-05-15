import 'package:flutter/material.dart';

// Общие параметры
const colorSiren = Color.fromARGB(255, 91, 111, 223);
const colorPurpl = Color.fromARGB(255, 119, 59, 205);
const colorSirenDarker = Color.fromARGB(255, 106, 61, 232);
const textColor = Color.fromARGB(255, 234, 244, 255);
List<Color> gradient = [colorSirenDarker, colorPurpl, colorSiren];

// Тема приложения

final thememain = ThemeData(
  // TODO: Добалять по мере создания
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 20,
      fontFamily: 'SageWold',
      fontStyle: FontStyle.italic,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 50,
      fontFamily: 'SageWold',
    ),
  ),
);
