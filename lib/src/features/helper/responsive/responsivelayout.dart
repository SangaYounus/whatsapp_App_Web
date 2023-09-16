import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  final Widget webscreenlayout;
  final Widget mobilescreenlayout;
  const Responsivelayout({
    Key? key,
    required this.webscreenlayout,
    required this.mobilescreenlayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return webscreenlayout;
      }
      return mobilescreenlayout;
    });
  }
}
