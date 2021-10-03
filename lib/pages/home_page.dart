import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myDesire = "Amaterasu";
  // final TextEditingController _desireController = TextEditingController();

  var myUrl = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(myUrl));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Flutter Testing App"),
      ),
      body: data != null
          ? ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]["title"]),
                subtitle: Text("ID : ${data[index]["id"]}"),
                leading: Image.network(data[index]["url"]),
              );
            })
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const AppDrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // myDesire = _desireController.text;
            setState(() {});
          },
          child: const Icon(Icons.send)),
    );
  }
}
