import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/themes/custom_theme.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _otpKey = GlobalKey();

    var focusNode0 = FocusNode();
    var focusNode1 = FocusNode();
    var focusNode2 = FocusNode();
    var focusNode3 = FocusNode();

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(left: 25.0, right: 25.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: CustomTheme.appColors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(125, 0, 0, 0),
                  blurRadius: 18.0,
                ),
              ],
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 22, 28, 22),
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter OTP",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: CustomTheme.appColors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "A one time password has been sent to your mobile number",
                        style: TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                            color: CustomTheme.appColors.black),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Form(
                        key: _otpKey,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 69,
                                width: 56,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomTheme
                                          .appColors.editTextBackground,
                                    ),
                                    color: CustomTheme
                                        .appColors.editTextBackground,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: TextFormField(
                                  autofocus: true,
                                  focusNode: focusNode0,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode1);
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 40,
                                  ),
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      counterText: ""),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                height: 69,
                                width: 56,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomTheme
                                          .appColors.editTextBackground,
                                    ),
                                    color: CustomTheme
                                        .appColors.editTextBackground,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: TextFormField(
                                  focusNode: focusNode1,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode2);
                                    }
                                    if (value.isEmpty) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode0);
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 40,
                                  ),
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      counterText: ""),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                height: 69,
                                width: 56,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomTheme
                                          .appColors.editTextBackground,
                                    ),
                                    color: CustomTheme
                                        .appColors.editTextBackground,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: TextFormField(
                                  focusNode: focusNode2,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode3);
                                    }
                                    if (value.isEmpty) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode1);
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 40,
                                  ),
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      counterText: ""),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                height: 69,
                                width: 56,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: CustomTheme
                                          .appColors.editTextBackground,
                                    ),
                                    color: CustomTheme
                                        .appColors.editTextBackground,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: TextFormField(
                                  focusNode: focusNode3,
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      FocusScope.of(context)
                                          .requestFocus(focusNode2);
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 40,
                                  ),
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      counterText: ""),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ]
                            ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 64, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      child: SvgPicture.asset("assets/next.svg"),
                      onPressed: () {
                        if (_otpKey.currentState!.validate()) {}
                      }),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
