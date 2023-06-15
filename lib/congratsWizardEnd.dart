// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:test_technique/addChild.dart';
import 'package:test_technique/addProfile.dart';
import 'package:test_technique/congratsWizardEnd2.dart';

class CongratsWizardEnd extends StatelessWidget {
  const CongratsWizardEnd({Key? key}) : super(key: key);
  static const routName = '/congratsWizardEnd';

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
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      Text(
                        "Congratulation!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You have successfully completed you child profile.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 109,
                        width: 87,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Vector.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 2 / 3,
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 2 / 3,
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/chatting2.png'),
                            ),
                          ),
                        ),
                        // First image
                      ),
                      Positioned(
                        top: 50,
                        left: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 2 / 3,
                          width: MediaQuery.of(context).size.width * 2 / 3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Vector2.png'),
                            ),
                          ),
                        ),
                        // Second image
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // padding: const EdgeInsets.only(top: 3, left: 3),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: FlatButton(
                        height: 50,
                        onPressed: () {
                          //  Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => SpaceChose()));
                        },
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Add another child",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color.fromRGBO(63, 119, 182, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      // padding: const EdgeInsets.only(top: 3, left: 3),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FlatButton(
                        height: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CongratsWizardEnd2()));
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
                              "Continue",
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
