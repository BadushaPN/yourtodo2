import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Widgets/TaskskLists/taskBlock.dart';
import 'package:yourtodo2/Widgets/Texts/texts.dart';

class TaskList extends StatelessWidget {
  final String priority;
  final String heading;
  final Color colors;
  final String content;
  final Color color;
  const TaskList(
      {super.key,
      required this.color,
      required this.content,
      required this.heading,
      required this.colors,
      required this.priority});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Texts(
            content: content,
            fontsize: 25,
          ),
          TaskBlock(
            priority: priority,
            colors: colors,
            heading: heading,
            color: color,
          ),
        ],
      ),
    );
  }
}
