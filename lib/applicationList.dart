// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:test_technique/widgets/appBar.dart';
import 'package:test_technique/widgets/applicationListItem.dart';
import 'package:test_technique/widgets/bottomBar.dart';
import 'package:test_technique/widgets/searchSection.dart';

class ApplicationList extends StatefulWidget {
  const ApplicationList({Key? key}) : super(key: key);
  static const routName = '/applicationList';
  @override
  State<ApplicationList> createState() => _ApplicationListState();
}

class _ApplicationListState extends State<ApplicationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Parental Control',),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(63, 99, 169, 1),
            ),
            padding: const EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
          child: Column(
            children: [
              SearchSection(),
              ApplicationListItem(title: "Google Chrome", iconName: Icons.camera_alt,),
              ApplicationListItem(title: "Camera", iconName: Icons.camera_alt)
            ],
          ),
          )
          ,
        ),
      ),
      bottomNavigationBar:
          BottomBar(selectedIndex: 1,), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
