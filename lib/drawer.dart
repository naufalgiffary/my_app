import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
