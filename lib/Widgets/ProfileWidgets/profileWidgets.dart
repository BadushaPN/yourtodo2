import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:yourtodo2/Widgets/Texts/texts.dart';

class ProfileWidgets extends StatelessWidget {
  final String content;

  const ProfileWidgets({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Texts(
          content: content,
          fontsize: 20,
        ),
      ),
    );
  }
}
