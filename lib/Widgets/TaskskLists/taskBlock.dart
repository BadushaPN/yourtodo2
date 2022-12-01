import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Widgets/CircleCheckBox/circleCheckBox.dart';
import 'package:yourtodo2/Widgets/Texts/texts.dart';

class TaskBlock extends StatelessWidget {
  final String priority;
  final Color colors;
  final String heading;
  final Color color;
  const TaskBlock(
      {super.key,
      required this.color,
      required this.heading,
      required this.colors,
      required this.priority});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        // margin: EdgeInsets.only(left: 40),
        // height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
              offset: Offset(0, 0),
              color: Colors.black26,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleCheckBox(
              color: color,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts(
                    content: heading,
                    fontsize: 20,
                  ),
                  Texts(
                    content: 'No description',
                    fontsize: 15,
                  ),
                  Texts(
                    content: 'November 26 2022',
                    fontsize: 12,
                    color: Color.fromARGB(255, 0, 24, 59),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Texts(
                  content: priority,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
