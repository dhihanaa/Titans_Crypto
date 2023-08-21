import 'package:flutter/material.dart';
import 'package:titans/Onboarding%20Screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Titans_Crypto',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
