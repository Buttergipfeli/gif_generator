import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlusView extends StatelessWidget {
  final double size;
  final double weight;
  final double borderRadius;
  final Color color;

  const PlusView({
    super.key,
    required this.size,
    this.weight = 2.0,
    this.borderRadius = 10.0,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _Line(
          width: weight,
          height: size,
          borderRadius: borderRadius,
          color: color,
        ),
        _Line(
          width: size,
          height: weight,
          borderRadius: borderRadius,
          color: color,
        ),
      ],
    );
  }
}

class _Line extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color color;

  const _Line({
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
