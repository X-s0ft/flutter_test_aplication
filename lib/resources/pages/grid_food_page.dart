import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/resources/widgets/all_widgets.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  List<String> img_dir = [
    'lib/resources/imgs/Border_pizza.jpg',
    'lib/resources/imgs/Border_pizza.jpg',
    'lib/resources/imgs/Border_pizza.jpg',
  ];

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
                    // width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: 190,
                    child: CarouselSlider(
                      items: img_dir
                          .map(
                            (item) => Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(item),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      // TODO: дописать Otions
                      options: CarouselOptions(),
                    ),
                  ),
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
