import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/custom_theme.dart';

class LoginBG extends StatelessWidget {
  const LoginBG({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Expanded(
                flex: 3,
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
                                color: CustomTheme.appColors.white,
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
                            // child: SvgPicture.asset("assets/Logo.svg"),
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
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    colors: [
                      CustomTheme.appColors.secondaryColor,
                      CustomTheme.appColors.primaryColor,
                    ],
                  )),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  height: 100,
                  color: CustomTheme.appColors.white,
                ),
              ),
            ],
          );
  }
}