import 'package:flutter/material.dart';
import 'package:molly/screens/login_screen.dart';
import 'package:molly/screens/otp_screen.dart';
import 'package:molly/themes/custom_theme.dart';
import 'package:molly/widgets/login_or_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      // home: Scaffold(body: LoginOrSignup()),
      home: const LoginScreen(),
    );
  }
}