import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.myDesire,
    required TextEditingController desireController,
  })  : _desireController = desireController,
        super(key: key);

  final String myDesire;
  final TextEditingController _desireController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/itachi.jpg",
          ),
          const SizedBox(height: 20),
          Text(
            myDesire,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.orange),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: _desireController,
                decoration: InputDecoration(
                    hintText: "What is your desire?",
                    labelText: "Dream",
                    border: OutlineInputBorder())),
          )
        ],
      ),
    );
  }
}
