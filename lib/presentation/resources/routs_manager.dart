import 'package:flutter/material.dart';
import 'package:task1/presentation/home/cubit/home_cubit.dart';
import 'package:task1/presentation/home/view/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/login/cubit/login_cubit.dart';
import 'package:task1/presentation/login/view/login_screen.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';

class Routs {
  static const String login = '/login';
  static const String home = '/home_screen';
}

Route generateRouts(RouteSettings settings) {
  switch (settings.name) {
    case Routs.login:
      return MaterialPageRoute(
          builder: (context) => BlocProvider(
                create: (context) => LoginCubit(),
                child: LoginScreen(),
              ));
    case Routs.home:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => HomeCubit(),
          child: HomeScreen(),
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => ErrorScreen());
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Navigation error',
          style: FontStyleManager.textStyle20Bold,
        ),
      ),
    );
  }
}
