import 'package:flutter/material.dart';
import 'package:molly/themes/custom_theme.dart';
import 'package:molly/widgets/login_bg.dart';
import 'package:molly/widgets/login_or_signup.dart';

import '../widgets/gmaps.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const Gmaps(),
            Container(
              height: 50,
              width: 100,
              color: CustomTheme.appColors.primaryColor,
            )
          ],
        ),
      );
  }
}