import 'package:flutter/material.dart';
import 'package:molly/widgets/login_bg.dart';
import 'package:molly/widgets/login_or_signup.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            const LoginBG(),
            LoginOrSignup(),
          ],
        ),
      );
  }
}
