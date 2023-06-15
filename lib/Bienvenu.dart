// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:test_technique/addDevice.dart';

class Bienvenu extends StatelessWidget {
  const Bienvenu({Key? key}) : super(key: key);
  static const routName = '/bienvenu';

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
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      Text(
                        "Welcome to 4IN Shield",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 384,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/chatting1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  // padding: const EdgeInsets.only(top: 3, left: 3),
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: MaterialButton(
                    minWidth: 111,
                    height: 50,
                    onPressed: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddDevice()));
                    },
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Start",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
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
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
