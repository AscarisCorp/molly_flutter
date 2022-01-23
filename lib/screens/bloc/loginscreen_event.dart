part of 'loginscreen_bloc.dart';

@immutable
abstract class LoginscreenEvent {}

class SignUpOnclickEvent extends LoginscreenEvent {}

class SelectLoginEvent extends LoginscreenEvent {}

class SelectSignUpEvent extends LoginscreenEvent {}
