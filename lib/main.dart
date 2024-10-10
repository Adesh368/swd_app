import 'package:flutter/material.dart';
import 'package:swd_app/screens/create_account_screen.dart';
import 'package:swd_app/screens/home_screen.dart';
import 'package:swd_app/screens/login_screen.dart';
import 'package:swd_app/screens/verify_email_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ),);
}


