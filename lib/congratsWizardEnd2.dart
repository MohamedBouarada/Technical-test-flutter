// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:test_technique/addChild.dart';
import 'package:test_technique/addProfile.dart';
import 'package:test_technique/childDashboard.dart';

class CongratsWizardEnd2 extends StatelessWidget {
  const CongratsWizardEnd2({Key? key}) : super(key: key);
  static const routName = '/congratsWizardEnd2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(63, 99, 169, 1),
            ),
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      Text(
                        "Thank you for your confidence in us.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 2 / 3,
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/MicrosoftTeams-image.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      // padding: const EdgeInsets.only(top: 3, left: 3),

                      child: FlatButton(
                        height: 50,
                        onPressed: () {
                           Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChildDashboard()));
                        },
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Go to dashboard",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color.fromRGBO(63, 119, 182, 1),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color.fromRGBO(63, 119, 182, 1),
                              size: 26.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
