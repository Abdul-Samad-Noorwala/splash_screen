import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testing/Screens/option_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OptionScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Splash Screen",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w900, color: Colors.black),
        ),
      ),
    );
  }
}
