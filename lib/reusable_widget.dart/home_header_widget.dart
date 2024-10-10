import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          border: Border.all(color: const Color(0xffA4A4A4)),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image.asset('assets/bettingsw.png'),
      ),
      const Row(
        children: [Text('Welcome Sam'), Icon(Icons.waving_hand)],
      ),
      Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xffA4A4A4))),
        child: const Icon(Icons.notification_add_sharp),
      ),
    ]);
  }
}
