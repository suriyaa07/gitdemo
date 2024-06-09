import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //const LoginPage({super.key});
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                const Text("Welcome to login page"),
                TextFormField(
                  controller: _usernameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "***@gmail.com", labelText: "email"),
                ),
                TextFormField(
                  controller: _pwController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "*********", labelText: "password"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
