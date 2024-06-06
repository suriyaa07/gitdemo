import 'package:flutter/material.dart';
import 'package:starter1/drawet.dart';
import 'package:starter1/inputCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = "Guest";
  TextEditingController _newController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Learning new"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text(name),
              ),
            ),
            Container(
              child: Text("Place holder"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: inputField(newController: _newController),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          name = _newController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      drawer: MyDrawer(),
    );
  }
}
