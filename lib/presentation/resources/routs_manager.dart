import 'package:flutter/material.dart';
import 'package:task1/presentation/login/login_screen.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';

class Routs{
   static const String login = '/login';
}

Route generateRouts(RouteSettings settings){
  switch(settings.name){
    case Routs.login:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    default:
      return MaterialPageRoute(builder: (context) => ErrorScreen());
  }
}
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('Navigation error',style: FontStyleManager.textStyle20Bold,),
        
      ),
    );
  }
}