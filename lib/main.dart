import 'package:flutter/material.dart';
import 'package:bitcuckoo/splash.dart';
import 'Login.dart';
import 'onBoarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/onboarding': (context) => OnBoarding(),
        '/login': (context) => Login(),
      },
      debugShowCheckedModeBanner: false,
    );
  }

}
