import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrapp/login.dart';
import 'package:qrapp/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login()
    );
  }
}