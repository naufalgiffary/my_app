import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(), theme: ThemeData(primarySwatch: Colors.red)));
}

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
            child: Card(
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
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Naufal Algiffary"),
              accountEmail: Text("naufalgiffary@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/photos/male-programmer-working-on-new-project-picture-id1274948583?s=612x612")),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Job"),
              subtitle: const Text("Flutter Developer"),
              trailing: const Icon(Icons.flutter_dash_sharp),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.local_activity),
              title: const Text("Hobby"),
              subtitle: const Text("Learn about flutter"),
              trailing: const Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myDesire = _desireController.text;
            setState(() {});
          },
          child: const Icon(Icons.send)),
    );
  }
}
