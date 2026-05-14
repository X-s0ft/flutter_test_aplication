import 'package:flutter/material.dart';
import 'package:flutter_test_aplication/resources/theme/theme.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.centerRight,
          colors: gradient,
        ),
      ),
      child: child,
    );
  }
}
