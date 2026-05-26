import 'package:flutter/material.dart';
import '../theme/theme.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient(this.child, {super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.centerRight,
          colors: gradient,
        ),
      ),
      child: Center(child: child),
    );
  }
}
