import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SafeArea(
          bottom: false,
          child: Column(children: [
            Expanded(
              child: Container(
                // height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomTheme.appColors.primaryColor,
                  image: DecorationImage(
                    image: AssetImage("assets/search.png"),
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
