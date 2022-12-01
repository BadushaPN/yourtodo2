// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yourtodo2/Screens/CompleteTask/completeTask.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Screens/EventScreen/eventScreen.dart';
import 'package:yourtodo2/Screens/HomeScreen/homeScreen.dart';
import 'package:yourtodo2/Screens/Profile/profile.dart';
// import 'package:yourtodo2/Screens/TaskAddingScreen/taskAddingScreen.dart';

class BottomNavigationCurvedBar extends StatefulWidget {
  const BottomNavigationCurvedBar({super.key});

  @override
  State<BottomNavigationCurvedBar> createState() =>
      _BottomNavigationCurvedBarState();
}

class _BottomNavigationCurvedBarState extends State<BottomNavigationCurvedBar> {
  int _currentIndex = 0;
  List pages = [
    HomeScreen(),
    EventScreen(),
    CompleteTask(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: pages[_currentIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(iconTheme: IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              animationDuration: Duration(milliseconds: 400),
              buttonBackgroundColor: Color.fromARGB(255, 0, 24, 59),
              color: Color.fromARGB(255, 0, 24, 59),
              backgroundColor: Color.fromARGB(255, 0, 24, 59),
              index: _currentIndex,
              items: const [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(
                  Icons.event,
                  size: 30,
                ),
                // Icon(
                //   Icons.add,
                //   size: 40,
                // ),
                Icon(
                  Icons.list,
                  size: 30,
                ),
                Icon(
                  Icons.person,
                  size: 30,
                ),
              ],
              onTap: (index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
