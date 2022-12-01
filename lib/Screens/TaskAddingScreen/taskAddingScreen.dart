import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:yourtodo2/Screens/HomeScreen/homeScreen.dart';
import 'package:yourtodo2/Widgets/CustomAppBar/customAppBar.dart';
import 'package:yourtodo2/Widgets/ElevatedButton/elevatedButton.dart';

import '../../Widgets/Texts/texts.dart';

class TaskAddingScreen extends StatelessWidget {
  TaskAddingScreen({super.key});

  final DateTime currentdateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    _selectDate() async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: currentdateTime,
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime(2050),
      );
      // setState(() {
      //   final currentdateTime = picked;
      // });
    }

    _selectTime() async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: 04, minute: 40),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.list,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: const Texts(
          content: 'New Task',
          fontsize: 30,
        ),
        centerTitle: true,
        flexibleSpace: const CustomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Texts(
                  content: 'What is your task?',
                  fontsize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Task',
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Texts(
                  content: 'Task Description',
                  fontsize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter Description',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Texts(
                content: 'Priority',
                fontsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedButton(
                    color: Colors.green,
                    onpressed: () {},
                    text: 'Low',
                  ),
                  CustomElevatedButton(
                    color: Colors.orange,
                    onpressed: () {},
                    text: 'Medium',
                  ),
                  CustomElevatedButton(
                    color: Colors.red,
                    onpressed: () {},
                    text: 'High',
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Texts(
                content: 'Date & Time',
                fontsize: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      _selectDate();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                        ),
                        Texts(
                          content:
                              DateFormat('dd-MMM-yyyy').format(currentdateTime),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _selectTime();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.lock_clock,
                        ),
                        Texts(
                          content: '4:40',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                onpressed: () {},
                text: 'Add',
                color: Color.fromARGB(255, 0, 24, 59),
              ),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                onpressed: () {},
                text: 'Discard',
                color: Colors.black12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
