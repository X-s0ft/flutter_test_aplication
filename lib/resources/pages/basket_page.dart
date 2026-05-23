import 'package:flutter/material.dart';
import '/resources/widgets/all_widgets.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        Center(
          child: Column(
            children: [
              Text('Корзина'),
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.white, size: 45),
      ),
    );
  }
}
