import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yourtodo2/Widgets/BottomNavigationBar/bottomNvigationBar.dart';
// import 'package:yourtodo1/Screens/HomeScreen/homeScreen.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:yourtodo1/Screens/splashScreen/CenterContainer/centerContainer.dart';
// import 'package:yourtodo1/Screens/splashScreen/bottomContainer/bottomContainer.dart';

import '../HomeScreen/homeScreen.dart';
import 'CenterContainer/centerContainer.dart';
import 'bottomContainer/bottomContainer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationCurvedBar(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: const [
              BottomContainer(),
              CenterContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
