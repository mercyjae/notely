import 'package:flutter/material.dart';
import 'package:notely/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
  theme: ThemeData(
        backgroundColor: const Color(0xFFF8EEE2),
        scaffoldBackgroundColor: const Color(0xFFF8EEE2),
        fontFamily: 'Nunito',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: const Color(0xFFD9614C),
        ),
      ),
      home: OnboardingScreen()
    );
  }
}

