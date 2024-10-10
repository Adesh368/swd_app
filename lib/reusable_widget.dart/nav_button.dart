import 'package:flutter/material.dart';

class NavigationStyle extends StatelessWidget {
  const NavigationStyle(this.text, this.onTap, {super.key});

  final String text;
  final void Function() onTap;
  @override
  Widget build(context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
                colors: [Color(0xffEFA058), Color(0xffEF5858)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xffffffff),
            ),
          ))),
    );
  }
}
