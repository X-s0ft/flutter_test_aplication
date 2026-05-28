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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: 200,
                    child: CarouselView(
                      itemExtent: 200,
                      shrinkExtent: 150,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      itemSnapping: true,
                      children: [
                        Image.asset('lib/resources/imgs/border_pizza.jpg'),
                        Image.asset('lib/resources/imgs/border_pizza.jpg'),
                        Image.asset('lib/resources/imgs/border_pizza.jpg'),
                      ],
                    ),
                  ),
                  //TODO: добавить автоматически переключающиеся банера (мин 3 шт)
                  Text('Пицца', style: Theme.of(context).textTheme.bodyLarge),
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
                  Text('Напитки', style: Theme.of(context).textTheme.bodyLarge),
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
