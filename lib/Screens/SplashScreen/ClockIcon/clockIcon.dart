import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClockIcon extends StatelessWidget {
  const ClockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 100,
        backgroundColor: Color.fromARGB(255, 0, 24, 59),
        child: Icon(
          Icons.schedule,
          color: Colors.white,
          size: 200,
        ),
      ),
    );
  }
}
