import 'package:flutter/material.dart';
import 'package:swd_app/reusable_widget.dart/createaccount_subwidget.dart';
import 'package:swd_app/reusable_widget.dart/design_container_widget.dart';
import 'package:swd_app/reusable_widget.dart/nav_button.dart';
import 'package:swd_app/reusable_widget.dart/textfield.dart';
import 'package:swd_app/screens/home_screen.dart';
import 'package:swd_app/screens/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
              const CreateAccountSubWidget(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the Row
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextfieldWidget(
                              text: 'First name',
                              hintText: 'First name',
                              onSaved: (value) {},
                              validator: (value) {}),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextfieldWidget(
                              text: 'Last name',
                              hintText: 'Last name',
                              onSaved: (value) {},
                              validator: (value) {}),
                        ),
                      ]),
                  const SizedBox(width: 20),
                  TextfieldWidget(
                      text: 'Phone number',
                      hintText: 'Enter phone number',
                      onSaved: (value) {},
                      validator: (value) {}),
                  const SizedBox(height: 20),
                  TextfieldWidget(
                      text: 'Email address',
                      hintText: 'Enter Email address',
                      onSaved: (value) {},
                      validator: (value) {}),
                  const SizedBox(height: 20),
                  TextfieldWidget(
                      text: 'Create Password',
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
                  TextfieldWidget(
                      text: 'Referral Code (Optional)',
                      hintText: 'Enter Referral Code',
                      onSaved: (value) {},
                      validator: (value) {}),
                  const SizedBox(height: 20),
                  NavigationStyle('Next', () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return const HomeScreen();
                    }));
                  }),
                  const SizedBox(height: 20),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerDesignWidget(color: Color(0xffffffff)),
                        ContainerDesignWidget(color: Color(0xff373737)),
                      ]),
                ]),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Account information',
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
