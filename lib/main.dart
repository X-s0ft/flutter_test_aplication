import 'package:flutter/material.dart';
import 'package:flutter_test_aplication/resources/theme/theme.dart';
import './resources/router/rout.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: router,
      theme: thememain,
    );
  }
}
