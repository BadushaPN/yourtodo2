// import 'dart:js_util';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Widgets/ProfileWidgets/profileWidgets.dart';

// import '../../Widgets/CustomAppBar/customAppBar.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final content = [
    'Settings',
    'Privacy and Policies',
    'About',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 24, 59),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.separated(
            itemCount: content.length,
            itemBuilder: (context, index) {
              return ProfileWidgets(
                content: content[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 1,
              );
            },
          ),
        ),
      ),
    );
  }
}
