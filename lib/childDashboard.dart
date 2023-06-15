// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:test_technique/addDevice.dart';
import 'package:test_technique/childDashboard2.dart';
import 'package:test_technique/widgets/appBar.dart';
import 'package:test_technique/widgets/bottomBar.dart';
import 'package:test_technique/widgets/messagesContainer.dart';

class ChildDashboard extends StatefulWidget {
  @override
  _ChildDashboardState createState() => _ChildDashboardState();
  static const routName = '/childDashboard';
}

class _ChildDashboardState extends State<ChildDashboard> {
  int _selectedIndex = 0;

  static const routName = '/childDashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Child first name',),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(63, 99, 169, 1),
            ),
            padding: const EdgeInsets.only(top: 20, left: 30.0, right: 30.0),
            child: ListView(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Avatar.png',
                            height: 72,
                            width: 78,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "First name Last name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _selectedIndex == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Month',
                              style: TextStyle(
                                color: _selectedIndex == 0
                                    ? Color.fromRGBO(63, 110, 177, 1)
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _selectedIndex == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Week',
                              style: TextStyle(
                                color: _selectedIndex == 1
                                    ? Color.fromRGBO(63, 110, 177, 1)
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _selectedIndex == 2
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Day',
                              style: TextStyle(
                                color: _selectedIndex == 2
                                    ? Color.fromRGBO(63, 110, 177, 1)
                                    : Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 150,
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Danger Level",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "High",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 5, 5, 0.59),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 90,
                              width: 150,
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Last night Sleep duration",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "8h",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 150,
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Device usage",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "4h",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 90,
                              width: 150,
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Phone call duration",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "4h",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(38, 38, 38, 0.59),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    
                    MessagesContainer(
                      title: 'Last Alerts',
                      data: [
                        {
                          "messageTitle": "Toxic comment!",
                          "message": "Mama always said life was like a box of chocolates. You never know what…",
                          "time":"12:34 PM",
                        },
                        {
                          "messageTitle": "Sleep depreviation!",
                          "message": "Mama always said life was like a box of chocolates. You never know what…",
                          "time":"12:34 PM",
                        },
                        
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ChildDashboard2(),

                    
                    SizedBox(height: 200,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          BottomBar(selectedIndex: 0,), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
}
