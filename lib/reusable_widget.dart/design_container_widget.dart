import 'package:flutter/material.dart';

class ContainerDesignWidget extends StatelessWidget {
  const ContainerDesignWidget({required this.color, super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 159.9,
      height: 2,
      decoration: BoxDecoration(color: color),
    );
  }
}
