import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                    image: AssetImage("assets/payment.png"),
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
