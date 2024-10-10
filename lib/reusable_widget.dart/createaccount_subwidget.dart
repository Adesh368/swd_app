import 'package:flutter/material.dart';
import 'package:swd_app/screens/login_screen.dart';

class CreateAccountSubWidget extends StatelessWidget {
  const CreateAccountSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            IconButton(
                onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const LoginScreen();
                }));
                }, icon: const Icon(Icons.arrow_back_ios)),
            const Text(
              'back',
              style: TextStyle(color: Color(0xffB9B9B9)),
            ),
          ]),
          Row(children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return const LoginScreen();
                }));
              },
              child: const Text(
                'Sign in instead',
                style: TextStyle(
                  color: Color(0xffEF5858),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffEF5858), // Set underline color
                  decorationThickness: 2,
                ),
              ),
            ),
          ]),
        ]),
        const SizedBox(height: 10),
        const Text(
          'Create an account',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 29,
          ),
        )
      ],
    );
  }
}
