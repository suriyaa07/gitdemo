import 'package:flutter/material.dart';

class inputField extends StatelessWidget {
  const inputField({
    super.key,
    required TextEditingController newController,
  }) : _newController = newController;

  final TextEditingController _newController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _newController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your age",
          labelText: "Age"),
    );
  }
}
