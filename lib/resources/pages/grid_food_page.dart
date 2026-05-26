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
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25),
              child: Column(
                spacing: 20,
                children: [
                  const Text('Пицца'),
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 200,
                  //   alignment: Alignment.centerLeft,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: ExactAssetImage(
                  //         'lib/resources/imgs/border_pizza.jpg',
                  //       ),
                  //     ),
                  //   ),
                  //   child: Text(
                  //     'Пицца',
                  //     style: Theme.of(context).textTheme.bodyLarge,
                  //   ),
                  // ),
                  SizedBox(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 25,
                      children: [
                        BlocFood(
                          'Пеперони',
                          '',
                          'Лучшая пиццааааааааааааааааааааааааааааааааааааааааааааааа',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          41,
                        ),
                        BlocFood(
                          'Пеперони',
                          '',
                          'Лучшая пиццааааааааааааааааааааааааааааааааааааааааааааааа',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          41,
                        ),
                        BlocFood(
                          'Пеперони',
                          '',
                          'Лучшая пиццааааааааааааааааааааааааааааааааааааааааааааааа',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          41,
                        ),
                        BlocFood(
                          'Пеперони',
                          'lib/resources/imgs/error_not_found.jpg',
                          'Лучшая пиццааааааааааааааааааааааааааааааааааааааааааааааа',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          41,
                        ),
                      ],
                    ),
                  ),
                  const Text('Напитки'),
                  SizedBox(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 25,
                      children: [
                        BlocFood(
                          'Sprite',
                          '',
                          'Sprite',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          9,
                        ),
                        BlocFood(
                          'Fanta',
                          '',
                          'Fanta',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          9,
                        ),
                        BlocFood(
                          '7-up',
                          '',
                          '7-up',
                          OutlinedButton(
                            onPressed: null,
                            child: Text('Добавить'),
                          ),
                          9,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
