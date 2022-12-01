import 'package:flutter/material.dart';

import 'Screens/SplashScreen/splashScreen.dart';

void main() {
  runApp(
    YourTodo(),
  );
}

class YourTodo extends StatelessWidget {
  const YourTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YourTodoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color.fromARGB(255, 0, 24, 59)),
      home: SplashScreen(),
    );
  }
}
