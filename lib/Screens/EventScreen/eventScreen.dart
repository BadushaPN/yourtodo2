import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yourtodo2/Screens/EventScreen/eventAddingScreen.dart';

import '../../Widgets/CustomAppBar/customAppBar.dart';
import '../../Widgets/FloatingButton/floatingButton.dart';
import '../../Widgets/Texts/texts.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(
        widget: EventAddingScreen(),
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
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 70,
        title: const Texts(
          content: 'Events',
          fontsize: 30,
        ),
        centerTitle: true,
        flexibleSpace: const CustomeAppBar(),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Color.fromARGB(255, 0, 24, 59),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Texts(
                              content: 'Event 1',
                              fontsize: 20,
                            ),
                            Texts(
                              content: 'Description',
                              fontsize: 15,
                            ),
                            Texts(
                              content: 'November 20 2022',
                              fontsize: 13,
                              color: Color.fromARGB(255, 0, 24, 59),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Color.fromARGB(255, 0, 24, 59),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Texts(
                              content: 'Event ',
                              fontsize: 20,
                            ),
                            Texts(
                              content: 'Description',
                              fontsize: 15,
                            ),
                            Texts(
                              content: 'December 19 2022',
                              fontsize: 13,
                              color: Color.fromARGB(255, 0, 24, 59),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
