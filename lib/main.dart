// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:test_technique/loginPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo BO3 Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(63, 119, 182, 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 85,
                  width: 81,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/MicrosoftTeams-image.png'),
                      
                    ),
                  ),
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    Text(
                      "Welcome to 4In Shield!\nSign in to continue",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 310,
                      height: 50,
                      onPressed: (){
                        Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
        
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
                            "Sign in with Email",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(63, 119, 182, 1),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.attach_email_outlined,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    MaterialButton(
                      minWidth: 310,
                      height: 50,
                      onPressed: (){},
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
                            "Sing in with Gmail",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(63, 119, 182, 1),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.attach_email_outlined,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    MaterialButton(
                      minWidth: 310,
                      height: 50,
                      onPressed: (){},
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
                            "Sing in with Facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(63, 119, 182, 1),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.facebook,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(63, 119, 182, 1),
                            size: 26.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                      "No account? Sign up",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.86),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    )
                  
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
