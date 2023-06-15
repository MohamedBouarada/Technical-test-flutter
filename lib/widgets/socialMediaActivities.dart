// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, deprecated_member_use, body_might_complete_normally_nullable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SocialMediaActivities extends StatelessWidget {
  final String title;
  final List<Map<String, String>> data;

  const SocialMediaActivities({
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      // alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(38, 38, 38, 0.86),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                final messageTitle = item['messageTitle'];
                final message = item['message'];
                final time = item['time'];
                final image = item['image'];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color.fromRGBO(93, 74, 255, 1),
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
                                        color: Color.fromARGB(255, 28, 163, 225),
                                      ),
                                      child: Image.asset(
                                        image!,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    messageTitle!,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(255, 7, 7, 0.86),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                time!,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(38, 38, 38, 0.35),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            message!,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(38, 38, 38, 0.59),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
