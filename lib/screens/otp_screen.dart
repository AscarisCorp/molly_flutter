import 'package:flutter/material.dart';
import 'package:molly/widgets/Otp.dart';

import '../widgets/login_bg.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: const [
            LoginBG(),
            Otp()
          ],
        ),
      );
  }
}