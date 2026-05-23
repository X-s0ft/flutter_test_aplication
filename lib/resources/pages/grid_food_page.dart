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
          padding: EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Пицца'),
                SizedBox(
                  child: Wrap(
                    spacing: 20,
                    children: [
                      BlocFood(
                        'Пеперони',
                        '',
                        'Лучшая пиццаааааааааааааааааааааааааааааааааааааааааааааааа',
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Добавить'),
                        ),
                        41,
                      ),
                      BlocFood(
                        'Пеперони',
                        '',
                        'Лучшая пиццаааааааааааааааааааааааааааааааааааааааааааааааа',
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Добавить'),
                        ),
                        41,
                      ),
                      BlocFood(
                        'Пеперони',
                        '',
                        'Лучшая пиццаааааааааааааааааааааааааааааааааааааааааааааааа',
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Добавить'),
                        ),
                        41,
                      ),
                      BlocFood(
                        'Пеперони',
                        'lib/resources/imgs/error_not_found.jpg',
                        'Лучшая пиццаааааааааааааааааааааааааааааааааааааааааааааааа',
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Добавить'),
                        ),
                        41,
                      ),
                    ],
                  ),
                ),

                //TODO: Добавить несколько напитков
                Column(
                  children: [
                    const Text('Напитки'),
                    SizedBox(
                      child: Wrap(
                        spacing: 20,
                        children: [
                          BlocFood(
                            'Sprite',
                            '',
                            '',
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('Добавить'),
                            ),
                            9,
                          ),
                          BlocFood(
                            'Fanta',
                            '',
                            '',
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('Добавить'),
                            ),
                            9,
                          ),
                          BlocFood(
                            '7-up',
                            '',
                            '',
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('Добавить'),
                            ),
                            9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
