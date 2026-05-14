import 'package:flutter/material.dart';
import '/resources/widgets/all_widgets.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(Center(child: Text('Главная страница'))),
    );
  }
}
