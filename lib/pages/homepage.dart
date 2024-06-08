import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = "Guest";
  //TextEditingController _newController = TextEditingController();

  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    //print(res.body);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Learning new"),
        ),
        body: data != null
            ? ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text("Vijith gf ${data[index]['id']}"),
                  leading: Image.network(data[index]['url']),
                );
              })
            : Center(child: CircularProgressIndicator())
        //Container(),

        //drawer: MyDrawer(),
        );
  }
}
