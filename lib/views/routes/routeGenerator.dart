import 'package:amaze/views/screens/createAnAccount.dart';
import 'package:amaze/views/screens/signUpScreen.dart';
import 'package:amaze/views/screens/successScreen.dart';
import 'package:amaze/views/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
//
  static const String welcome = "/";
  static const String signUp = "/signUp";
  static const String createAccount = "/createAccount";
  static const String success = "/succesScreen";
  

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAnAccount());
      case success:
        return MaterialPageRoute(builder: (_) => const SuccessScreen());
      
    }
  }
}
