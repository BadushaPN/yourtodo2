import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Screens/TaskAddingScreen/taskAddingScreen.dart';

class FloatingButton extends StatelessWidget {
  final Widget widget;
  const FloatingButton({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return widget;
            },
          ),
        );
      },
      backgroundColor: Color.fromARGB(255, 0, 24, 59),
      child: Icon(
        Icons.add,
      ),
    );
  }
}
