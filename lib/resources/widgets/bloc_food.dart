import 'package:flutter/material.dart';

class BlocFood extends StatelessWidget {
  const BlocFood(
    this.name,
    this.sourceimg,
    this.description,
    this.child,
    this.price, {
    super.key,
  });
  final String name;
  final String sourceimg;
  final String description;
  final Widget child;
  final int price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(name),
          Image.asset(sourceimg, height: 70, width: 70),
          Text(description),
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child,
              Text('$price руб.'),
            ],
          ),
        ],
      ),
    );
  }
}
