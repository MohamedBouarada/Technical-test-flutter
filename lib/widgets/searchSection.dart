// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(63, 99, 169, 1),
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(63, 98, 169, 0.45),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.06),
                          
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
