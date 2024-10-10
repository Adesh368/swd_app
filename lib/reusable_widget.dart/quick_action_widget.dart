import 'package:flutter/material.dart';

class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget(this.text, this.textimage, this.onTap, {super.key});

  final String text;
  final String textimage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 78,
        decoration: BoxDecoration(
          color: const Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(textimage),
          const SizedBox(height: 5),
          Text(text,style: const TextStyle(color: Color(0xffffffff),fontSize: 14),)
        ]),
      ),
    );
  }
}
