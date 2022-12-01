import 'package:flutter/material.dart';

// import '../FloatingButton/floatingButton.dart';

class CustomeBody extends StatelessWidget {
  final Widget widget;

  const CustomeBody({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            color: Colors.white),
        child: widget);
  }
}
