import 'package:amaze/views/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
//
  static const String welcome = "/";
  

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      
    }
  }
}
