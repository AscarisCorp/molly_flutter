import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SafeArea(
          child: Column(children: [
            Expanded(
              child: Container(
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomTheme.appColors.primaryColor,
                  image: DecorationImage(
                    image: AssetImage("assets/filterScreen.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                // child: Image.asset("assets/filterScreen.png"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
