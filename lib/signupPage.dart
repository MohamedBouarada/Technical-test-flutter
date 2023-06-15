// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  static const routName = '/signup';

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
                SignupCard(),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SignupCard extends StatefulWidget {
  const SignupCard({Key? key}) : super(key: key);

  @override
  _SignupCardState createState() => _SignupCardState();
}

class _SignupCardState extends State<SignupCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Color.fromRGBO(63, 119, 182, 1), fontSize: 14),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Username',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                validator: (value) {},
                onSaved: (newValue) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Color.fromRGBO(63, 119, 182, 1), fontSize: 14),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Email',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                validator: (value) {},
                onSaved: (newValue) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: const TextStyle(
                    color: Color.fromRGBO(63, 119, 182, 1), fontSize: 14),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Password',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is invalid';
                  }
                },
                onSaved: (newValue) {},
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: const TextStyle(
                    color: Color.fromRGBO(63, 119, 182, 1), fontSize: 14),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Confirm your password',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is invalid';
                  }
                },
                onSaved: (newValue) {},
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "I herby accept ",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "terms and conditions",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.86),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                  onPressed: () {},
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
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color.fromRGBO(63, 119, 182, 1),
                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
