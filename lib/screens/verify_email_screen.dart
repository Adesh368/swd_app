import 'package:flutter/material.dart';
import 'package:swd_app/reusable_widget.dart/design_container_widget.dart';
import 'package:swd_app/reusable_widget.dart/nav_button.dart';
import 'package:swd_app/reusable_widget.dart/pin_inputbox_widget.dart';
import 'package:swd_app/screens/create_account_screen.dart';
import 'package:swd_app/screens/home_screen.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final _inputboxcontroller1 = TextEditingController();
  final _inputboxcontroller2 = TextEditingController();
  final _inputboxcontroller3 = TextEditingController();
  final _inputboxcontroller4 = TextEditingController();
  String str1 = '-';
  String str2 = '-';
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screeheight,
          width: screenwidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Login.png'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const CreateAccountScreen();
                          }));
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text(
                      'back',
                      style: TextStyle(color: Color(0xffB9B9B9)),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Verify your email',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 29,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Please enter the OTP sent to',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xffB9B9B9),
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'musataofik01@gmail.com',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                PinInputBox(
                                    controller: _inputboxcontroller1,
                                    readonly: false,
                                    obscuremode: false),
                                PinInputBox(
                                    controller: _inputboxcontroller2,
                                    readonly: false,
                                    obscuremode: false),
                                PinInputBox(
                                    controller: _inputboxcontroller3,
                                    readonly: false,
                                    obscuremode: false),
                                Text(
                                  '$str1$str2',
                                  style: const TextStyle(
                                    color: Color(0xffBFBFBF),
                                  ),
                                ),
                                PinInputBox(
                                    controller: _inputboxcontroller4,
                                    readonly: false,
                                    obscuremode: false),
                                PinInputBox(
                                    controller: _inputboxcontroller4,
                                    readonly: false,
                                    obscuremode: false),
                                PinInputBox(
                                    controller: _inputboxcontroller4,
                                    readonly: false,
                                    obscuremode: false),
                              ]),
                          const SizedBox(height: 400),
                          NavigationStyle('Verify Email', () {
                             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
                  return const HomeScreen();
                }));
                          }),
                          const SizedBox(height: 20),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ContainerDesignWidget(color: Color(0xffffffff)),
                                ContainerDesignWidget(color: Color(0xffffffff)),
                              ]),
                        ]),
                  ),
                   const SizedBox(height: 20),
                 const Center(
                    child:  Text(
                      'Email verification',
                      style: TextStyle(color: Color(0xffA4A4A4)),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
