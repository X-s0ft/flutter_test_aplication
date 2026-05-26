import 'package:flutter/material.dart';
import '../theme/theme.dart';

class BlocFood extends StatelessWidget {
  const BlocFood(
    this.name,
    this.sourceimg,
    this.description,
    this.childbutton,
    this.price, {
    super.key,
  });

  final String name;
  final String sourceimg;
  final String description;
  final Widget childbutton;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topRight,
          end: AlignmentGeometry.bottomLeft,
          colors: gradient,
        ),
        boxShadow: const [BoxShadow(blurRadius: 5)],
        borderRadius: BorderRadius.circular(10),
      ),
      width: 250,
      child: Column(
        children: [
          Text(name),
          Image.asset(
            sourceimg.isEmpty
                ? "lib/resources/imgs/error_not_found.jpg"
                : sourceimg,
            height: 120,
            width: 120,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              description,
              softWrap: true,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [childbutton, Text('$price руб.')],
          ),
        ],
      ),
    );
  }
}
