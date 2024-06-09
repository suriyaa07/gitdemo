import 'package:backendex/pages/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:backendex/pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}
