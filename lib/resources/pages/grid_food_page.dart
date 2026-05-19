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
      body: BackgroundGradient(
        Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [Text('Быстрые переходы')]),
              Column(
                children: [
                  const Text('Пицца'),
                  BlocFood(
                    'Пеперони',
                    'lib/resources/imgs/error_not_found.jpg',
                    'Лучшая пицца',
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Добавить',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    41,
                  ),
                ],
              ),
              Column(children: [const Text('Напитки')]),
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/Basket');
        },
        icon: Icon(Icons.shopping_cart_sharp, color: Colors.white, size: 45),
      ),
    );
  }
}
