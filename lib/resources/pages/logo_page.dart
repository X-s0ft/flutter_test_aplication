import 'package:flutter/material.dart';
import '/resources/widgets/all_widgets.dart';

// TODO: Сделать чтобы эта страница появлялась на 3 секунды и затем перешло на грид
class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradient(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Image.asset('../web/icons/icon-512.png', width: 120, height: 120),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COSMO Delivery',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'made by X-s0ft',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
