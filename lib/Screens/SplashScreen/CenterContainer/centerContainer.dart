import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:yourtodo1/Screens/splashScreen/ClockIcon/clockIcon.dart';

import '../ClockIcon/clockIcon.dart';

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 200,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 220,
          height: 220,
          // ignore: sort_child_properties_last
          child: const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: ClockIcon(),
          ),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 15, offset: Offset(0, 2)),
            ],
            borderRadius: (BorderRadius.circular(40)),
          ),
        ),
      ),
    );
  }
}
