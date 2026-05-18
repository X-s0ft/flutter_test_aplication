import 'package:flutter/material.dart';

class BlocFood extends StatelessWidget {
  const BlocFood(
    this.sourceimg,
    this.price,
    this.name,
    this.description, {
    super.key,
  });

  final String sourceimg;
  final int price;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(sourceimg),
          Text(name),
          Text(description),
          Text('$price руб.'),
        ],
      ),
    );
  }
}
