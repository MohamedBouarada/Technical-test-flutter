// ignore_for_file: unnecessary_new, prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(70);
  final String title;
  MyAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Color.fromRGBO(255, 255, 255, 0.86),
          size: 30,
        ),
        onPressed: null,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: const [
        IconButton(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(255, 255, 255, 0.86),
            size: 30,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Color.fromRGBO(63, 99, 169, 1),
    );
  }
}
