import 'package:flutter/material.dart';
import 'package:flutter_test_aplication/resources/pages/all_pages.dart';
 
void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      showPerformanceOverlay: true,
      home: LogoPage(),
    );
  }
}
