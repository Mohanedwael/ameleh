import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'secondScreen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('images/logo.png'),
        nextScreen: AllChatsScreen(),
        backgroundColor: Color(0xff292F3F),
        animationDuration: Duration(seconds: 3),
        duration: 5000,
        splashIconSize: 150,
        splashTransition: SplashTransition.scaleTransition,
    );
  }
}