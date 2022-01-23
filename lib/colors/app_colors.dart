import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors{

  MaterialColor get getMaterialColor{
        Map<int, Color> color =
{
50:const Color.fromRGBO(4,131,184, .1),
100:const Color.fromRGBO(4,131,184, .2),
200:const Color.fromRGBO(4,131,184, .3),
300:const Color.fromRGBO(4,131,184, .4),
400:const Color.fromRGBO(4,131,184, .5),
500:const Color.fromRGBO(4,131,184, .6),
600:const Color.fromRGBO(4,131,184, .7),
700:const Color.fromRGBO(4,131,184, .8),
800:const Color.fromRGBO(4,131,184, .9),
900:const Color.fromRGBO(4,131,184, 1),
};
     MaterialColor myColor = MaterialColor(0xff35858B, color);
     return myColor;
  }
  
  final white = const Color(0xffffffff);
  final black = const Color(0xff000000);
  final primaryColor = const Color(0xff35858B);
  final secondaryColor = const Color(0xff4FBDBA);
  final textPrimary = const Color(0xff4FBDBA);
  final textHint = const Color(0xffA6A6A6);
  final screenBackground = const Color(0xffE5E5E5);
  final editTextBackground = const Color(0xffF2F2F2);
  final textBlured = const Color(0xffDADCDE);
  final textTransaction = const Color(0xffBD4F4B);
  final textError = const Color(0xffBD4F4B);

  const AppColors();

}