import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3.0,
          leading: CircleAvatar(
            child: Image.asset("images/logo.png"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                "by Boldare",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_alert,
                color: Colors.blue,
              ),
              Icon(
                Icons.ac_unit,
                color: Colors.blue,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: false,
                color: false,
                textColor: false,
                radius: false,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: false,
                color: false,
                textColor: false,
                radius: false,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: false,
                color: false,
                textColor: false,
                radius: false,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: false,
                color: false,
                textColor: false,
                radius: false,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              ),
              MessageText(
                alignment: false,
                color: false,
                textColor: false,
                radius: false,
              ),
              MessageText(
                alignment: true,
                color: true,
                textColor: true,
                radius: true,
              )
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Image.asset("images/add.png"),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset("images/camera.png"),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset("images/image.png"),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset("images/mic.png"),
                const SizedBox(
                  width: 5.0,
                ),
                const Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      hintText: 'Enter something',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessageText extends StatelessWidget {
  final bool alignment;
  final bool radius;
  final bool color;
  final bool textColor;
  const MessageText({
    Key? key,
    required this.alignment,
    required this.color,
    required this.textColor,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            alignment ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          Material(
            elevation: 6.0,
            borderRadius: radius
                ? const BorderRadius.only(
                    topRight: Radius.circular(31.0),
                    topLeft: Radius.circular(31.0),
                    bottomRight: Radius.circular(31.0),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(31.0),
                    topRight: Radius.circular(31.0),
                    bottomLeft: Radius.circular(31.0),
                    bottomRight: Radius.circular(31.0),
                  ),
            color: color ? Colors.blue : Colors.grey.shade300,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
              child: Text(
                "Hello how are you",
                style: TextStyle(
                  color: textColor ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
