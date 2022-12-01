// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:yourtodo2/Screens/TaskAddingScreen/taskAddingScreen.dart';
import 'package:yourtodo2/Widgets/FloatingButton/floatingButton.dart';
import 'package:yourtodo2/Widgets/TaskskLists/taskList.dart';
// import 'package:yourtodo2/Widgets/TaskskLists/taskList.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:yourtodo2/Screens/EventScreen/eventScreen.dart';
// import 'package:yourtodo2/Widgets/BottomNavigationBar/bottomNvigationBar.dart';
import 'package:yourtodo2/Widgets/Texts/texts.dart';

import '../../Widgets/CustomAppBar/customAppBar.dart';
import '../../Widgets/CustomeBody/customeBody.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(
        widget: TaskAddingScreen(),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 24, 59),
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.list,
        //   ),
        // ),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(
                      () {
                        this.isSearching = false;
                      },
                    );
                  },
                  icon: Icon(
                    Icons.cancel,
                  ),
                )
              : IconButton(
                  onPressed: () {
                    setState(
                      () {
                        this.isSearching = true;
                      },
                    );
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 70,
        title: !isSearching
            ? Texts(
                content: 'YourTodo',
                fontsize: 30,
              )
            : TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  label: Texts(
                    content: 'Search Tasks&Events',
                    color: Colors.white,
                  ),
                ),
              ),
        centerTitle: true,
        flexibleSpace: const CustomeAppBar(),
      ),
      body: CustomeBody(
        widget: TaskList(
          priority: 'High',
          colors: Colors.red,
          heading: 'Task1',
          content: 'Today',
          color: Colors.black12,
        ),
      ),
    );
  }
}
