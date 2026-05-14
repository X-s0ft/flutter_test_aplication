import 'package:flutter/material.dart';
import 'package:flutter_test_aplication/resources/widgets/background.dart';

// TODO: Сделать чтобы эта страница появлялась на 3 секунды и затем перешло на грид
class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(Center(child: Text('Лого'),))
    );
  }
}
