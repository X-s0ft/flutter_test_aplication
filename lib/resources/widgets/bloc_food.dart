import 'package:flutter/material.dart';

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
    // TODO: Украсти блок обводкой, задним фоном и тенью
    return SizedBox(
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
          ), // TODO: Сделать проверку на наличие изображения
          Text(
            description,
            softWrap: true,
            style: Theme.of(context).textTheme.bodySmall,
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
