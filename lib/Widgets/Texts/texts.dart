import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final Color? color;
  final String content;
  final double? fontsize;
  const Texts({super.key, required this.content, this.fontsize, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}
