
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:frist_file/corsesmica/cahtaap/scaendscreen.dart';



class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedSplashScreen(
        splash: Image.asset('assets/images/Logo -uihut.jpg'),
        nextScreen:  const scaendscreen(),
        backgroundColor: Colors.white,
        animationDuration: const Duration(seconds: 3),
        duration: 5000,
        splashIconSize: 150,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
