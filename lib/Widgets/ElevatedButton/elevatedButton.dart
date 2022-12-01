import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Widgets/Texts/texts.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function() onpressed;
  final double? height;
  final double? width;
  const CustomElevatedButton(
      {super.key,
      this.width,
      this.height,
      required this.onpressed,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100,
      height: height ?? 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onpressed,
        child: Texts(
          content: text,
        ),
      ),
    );
  }
}
