import 'package:flutter/material.dart';
import 'package:swd_app/reusable_widget.dart/nav_button.dart';
import 'package:swd_app/reusable_widget.dart/textfield.dart';
import 'package:swd_app/screens/create_account_screen.dart';
import 'package:swd_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
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
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/Welcomeback.png'),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextfieldWidget(
                          text: 'Email address',
                          hintText: 'Enter Email address',
                          onSaved: (value) {},
                          validator: (value) {}),
                      const SizedBox(height: 20),
                      TextfieldWidget(
                          text: 'Password',
                          hintText: 'Enter Password',
                          obscureText: _obscureText,
                          icons: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          onSaved: (value) {},
                          validator: (value) {}),
                      const SizedBox(height: 20),
                      const Text(
                        'Forgot Password?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xffB9B9B9),
                        ),
                      ),
                      const SizedBox(height: 20),
                      NavigationStyle('Sign In', () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (ctx) {
                          return const HomeScreen();
                        }));
                      })
                    ]),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('I don’t have an account, ',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: const Color(0xffB9B9B9),
                          fontSize: 14,
                        )),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const CreateAccountScreen();
                    }));
                  },
                  child: Text(
                    'Create account',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: const Color(0xffEFA058), fontSize: 14),
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
