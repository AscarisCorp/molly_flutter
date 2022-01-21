import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 24,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 40,
                                color: Colors.white,
                              ),
                              Text(
                                "Welcome!",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: CustomTheme.appColors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: SvgPicture.asset("assets/Logo.svg"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                              child: Text(
                                "Lorem ipsum dolor sit amet, "
                                "consectetur adipiscing elit, sed do eiusmod tempor "
                                "incididunt ut labore et dolore magna aliqua.",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: CustomTheme.appColors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.0, 1.0),
                    colors: [
                      Color(0xFF4FBDBA),
                      Color(0xFF35858B),
                    ],
                  )),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 310,
              margin: const EdgeInsets.only(left: 25.0, right: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFFFFFFFF),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x40000000),
                    blurRadius: 18.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
