// import 'dart:js';

// import 'dart:js';

// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import '../../Widgets/CustomAppBar/customAppBar.dart';
import '../../Widgets/ElevatedButton/elevatedButton.dart';
import '../../Widgets/Texts/texts.dart';

class EventAddingScreen extends StatefulWidget {
  EventAddingScreen({super.key});

  @override
  State<EventAddingScreen> createState() => _EventAddingScreenState();
}

class _EventAddingScreenState extends State<EventAddingScreen> {
  File? _image;
  getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final iamgeTemporary = File(image.path);
    setState(() {
      this._image = iamgeTemporary;
    });
  }

  final DateTime currentdateTime = DateTime(2022, 11, 26);

  @override
  Widget build(BuildContext context) {
    _selectDate() async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: currentdateTime,
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime(2050),
      );
    }

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
        elevation: 0,
        toolbarHeight: 70,
        title: const Texts(
          content: 'New Events',
          fontsize: 30,
        ),
        centerTitle: true,
        flexibleSpace: const CustomeAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('lib/assests/Events.jpg'),
                          radius: 80,
                          backgroundColor: Color.fromARGB(255, 0, 24, 59),
                        ),
                      ),
                      Positioned(
                        left: 130,
                        bottom: 10,
                        child: InkWell(
                          onTap: () {
                            getImage();
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.camera_alt,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Texts(
                    content: 'What is your Event?',
                    fontsize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Event',
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Texts(
                    content: 'Event Description',
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
                  content: 'Date',
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
                            content: 'November 26 2022',
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
      ),
    );
  }
}
