// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_technique/widgets/switchButton.dart';

class ApplicationListItem extends StatelessWidget {
  final String title;
  final IconData iconName;
  const ApplicationListItem({
    required this.title,
    required this.iconName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(63, 99, 169, 1),
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(255, 255, 255, 0.03),
            width: 2.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Icon(
                        iconName,
                        color: Colors.white,
                        size: 26.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.86),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
              SwitchButton(),
            ],
          ),
          SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
