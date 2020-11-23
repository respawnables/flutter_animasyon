import 'package:flutter/material.dart';

@immutable
class Circle extends StatelessWidget {
  Circle({this.diameter, this.color, this.child});

  final double diameter;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.diameter,
      height: this.diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: this.color,
      ),
      child: this.child,
    );
  }
}
