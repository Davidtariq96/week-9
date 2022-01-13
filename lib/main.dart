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
          elevation: 10.0,
          leading: const CircleAvatar(),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const <Widget>[
            Material(
              elevation: 6.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(31.0),
                bottomLeft: Radius.circular(31.0),
                bottomRight: Radius.circular(31.0),
              ),
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                child: Text(
                  "Hello how are you",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Material(
              elevation: 6.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(31.0),
                bottomLeft: Radius.circular(31.0),
                bottomRight: Radius.circular(31.0),
              ),
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                child: Text(
                  "Hello how are you",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
