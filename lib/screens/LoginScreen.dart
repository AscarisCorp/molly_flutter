import 'package:flutter/material.dart';

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
        children:[
          Column(
            children:[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Welcome"),
                          Container(
                            height: 60,
                            width: 60,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const Text("habfkhjsnknkjnskjans"),
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
