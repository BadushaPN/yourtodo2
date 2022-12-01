import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Widgets/CustomeBody/customeBody.dart';
import 'package:yourtodo2/Widgets/TaskskLists/taskList.dart';

import '../../Widgets/CustomAppBar/customAppBar.dart';
import '../../Widgets/Texts/texts.dart';

class CompleteTask extends StatelessWidget {
  const CompleteTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.list,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 70,
        title: const Texts(
          content: 'Completed Tasks',
          fontsize: 30,
        ),
        centerTitle: true,
        flexibleSpace: const CustomeAppBar(),
      ),
      body: SafeArea(
        child: CustomeBody(
          widget: TaskList(
            priority: 'Low ',
            colors: Colors.green,
            heading: 'Task2',
            color: Colors.blue,
            content: " ",
          ),
        ),
      ),
    );
  }
}
