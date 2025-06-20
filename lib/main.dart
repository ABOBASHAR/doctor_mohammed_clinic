import 'package:flutter/material.dart';
import 'package:flutter_application_5/homescreen.dart';
import 'package:flutter_application_5/onboardingscreen.dart';
import 'package:flutter_application_5/splashscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctune',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => Homescreen(),
      },
      
    );
  }
}