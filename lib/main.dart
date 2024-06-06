import 'package:flutter/material.dart';
import 'package:starter1/pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}
