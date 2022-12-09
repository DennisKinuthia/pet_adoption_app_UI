import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.padding,
    this.color,
  });

  final double width;
  final double height;
  final EdgeInsets? padding;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12.0),
        color: color ?? Colors.white,
        boxShadow: myShadow,
      ),
      child: child,
    );
  }
}
