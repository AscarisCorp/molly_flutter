import 'package:flutter/material.dart';
import 'package:molly/screens/login_screen.dart';
import 'package:molly/themes/custom_theme.dart';

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
      home: const LoginScreen(),
    );
  }
}