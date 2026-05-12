import 'package:flutter/material.dart';
import 'package:flutter_test_aplication/resources/theme/theme.dart';
import './resources/router/rout.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: router,
      theme: thememain,
    );
  }
}
