import 'package:flutter/material.dart';
import 'package:backendex/pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}
