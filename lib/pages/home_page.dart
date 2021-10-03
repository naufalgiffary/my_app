import 'package:flutter/material.dart';

import '../drawer.dart';
import '../home_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myDesire = "Amaterasu";
  TextEditingController _desireController = TextEditingController();

  @override
  void initState() {
    super.initState();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: HomeCard(
                myDesire: myDesire, desireController: _desireController),
          ),
        ),
      ),
      drawer: appDrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myDesire = _desireController.text;
            setState(() {});
          },
          child: const Icon(Icons.send)),
    );
  }
}
