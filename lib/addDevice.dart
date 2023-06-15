// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({Key? key}) : super(key: key);
  static const routName = '/AddDevice';

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
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      // const SizedBox(
                      //   height: 25,
                      // ),
                      Text(
                        "Please add your child’s devices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The information from your child’s device will help us to assess their mental health, duration of sleep, places visited, used applications  etc. It also gives you the ability to block or allow installed applications",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please follow the following steps:\n 1.Bring your child’s mobile phone\n 2.Scan this QR code with your child’s device camera\n 3.You will be redirected to the 4IN shield application download page\n 4.Once the application is installed, click Next ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 169,
                  width: 206,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/frame1.png'),
                    ),
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
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        minWidth: 105,
                        height: 50,
                        onPressed: () {
                          //  Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => SpaceChose()));
                        },
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: 
                            Text(
                              "Skip",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
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
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        minWidth: 105,
                        height: 50,
                        onPressed: () {
                          //  Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => SpaceChose()));
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
                              "Next",
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
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
