

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
    String? emailValidator(String? value) {
    if (value == null) {
      return 'The email must be not empty!!';
    }
    if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return 'Enter a valid email!!';
    }
    return null;
  }
   String? passwordValidator(String? value) {
     if (value == null ? true : value.isEmpty) {
      return 'The password must be not empty!!';
    }
    return null;
  }


}
