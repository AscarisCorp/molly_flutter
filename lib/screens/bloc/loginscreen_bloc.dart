import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:molly/screens/login_screen.dart';

part 'loginscreen_event.dart';
part 'loginscreen_state.dart';

class LoginscreenBloc extends Bloc<LoginscreenEvent, LoginscreenState> {
  LoginscreenBloc() : super(LoginscreenInitial()) {

    on<SelectLoginEvent>((event, emit) {
        emit(LoginSelectedState());
    });

     on<SelectSignUpEvent>((event, emit) {
        emit(SignUpSelectedState());
    });
  
  
  
  }
}
