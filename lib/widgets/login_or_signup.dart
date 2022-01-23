import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molly/screens/bloc/loginscreen_bloc.dart';
import 'package:molly/themes/custom_theme.dart';

class LoginOrSignup extends StatelessWidget {
  LoginOrSignup({Key? key}) : super(key: key);

  final GlobalKey<FormState> _loginKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider(
        create: (BuildContext context) =>
            LoginscreenBloc()..add(SelectLoginEvent()),
        child: BlocBuilder<LoginscreenBloc, LoginscreenState>(
          builder: (BuildContext context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      key: _loginKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: (() =>
                                    BlocProvider.of<LoginscreenBloc>(context)
                                        .add(SelectLoginEvent())),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          CustomTheme.appColors.primaryColor),
                                ),
                              ),
                              const SizedBox(
                                width: 38,
                              ),
                              GestureDetector(
                                onTap: () =>
                                    BlocProvider.of<LoginscreenBloc>(context)
                                        .add(SelectSignUpEvent()),
                                child: Text(
                                  "Signup",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          CustomTheme.appColors.primaryColor),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            height: 4,
                            width: 200,
                            child: Stack(
                              children: [
                                AnimatedPositioned(
                                  left: state is LoginSelectedState
                                      ? 0
                                      : state is SignUpSelectedState
                                          ? 84
                                          : 0,
                                  duration: const Duration(milliseconds: 100),
                                  child: Container(
                                    color: CustomTheme.appColors.primaryColor,
                                    height: 3,
                                    width: state is LoginSelectedState
                                        ? 46
                                        : state is SignUpSelectedState
                                            ? 56
                                            : 46,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Visibility(
                            visible: state is LoginSelectedState,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Email",
                                errorText: null,
                                border: const OutlineInputBorder(),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.appColors.textError,
                                    width: 2,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: CustomTheme.appColors.textHint),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomTheme.appColors.textHint,
                                      width: 0.8),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email is empty";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Visibility(
                            visible: state is LoginSelectedState,
                            child: const SizedBox(
                              height: 25,
                            ),
                          ),
                          Visibility(
                            visible: state is LoginSelectedState,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password",
                                errorText: null,
                                border: const OutlineInputBorder(),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.appColors.textError,
                                    width: 2,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: CustomTheme.appColors.textHint),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomTheme.appColors.textHint,
                                      width: 0.8),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is empty";
                                }
                                return null;
                              },
                            ),
                          ),
                          Visibility(
                            visible: state is SignUpSelectedState,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Phone Number",
                                labelText: "Phone Number",
                                errorText: null,
                                border: const OutlineInputBorder(),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: CustomTheme.appColors.textError,
                                    width: 2,
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: CustomTheme.appColors.textHint),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: CustomTheme.appColors.textHint,
                                      width: 0.8),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Phone is invalid";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                      onPressed: () {}),
                    )
                    ],
                ),
              )
            ]);
          },
        ),
      ),
    );
  }
}
