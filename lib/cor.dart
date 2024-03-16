import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          SizedBox(
          ),
          Text('shop'),
          SizedBox(),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'enter to pass',
            ),
          ),
          SizedBox(),
          TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'enter your erg',
            ),
          )
        ],
      ),
    );
  }
}
