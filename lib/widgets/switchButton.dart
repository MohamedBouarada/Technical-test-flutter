// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          (isSwitched)?"On":"Off",
          style: TextStyle(
            color: Color.fromRGBO(255 , 255, 255, 0.3),
            fontSize: 10.0,
          ),
        ),
        Switch(
          value: isSwitched,
          activeColor: Color.fromRGBO(83, 242, 147, 1),
          inactiveThumbColor: Colors.white,
          activeTrackColor: Color.fromRGBO(83, 242, 147, 1),
          inactiveTrackColor: Color.fromRGBO(255 , 255, 255, 0.03),
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        ),
       
        
      ],
    );
  }
}