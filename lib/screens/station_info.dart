import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class StationInfo extends StatefulWidget {
  const StationInfo({Key? key}) : super(key: key);

  @override
  State<StationInfo> createState() => _StationInfoState();
}

class _StationInfoState extends State<StationInfo> {
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
                    image: AssetImage("assets/station_screen.png"),
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
