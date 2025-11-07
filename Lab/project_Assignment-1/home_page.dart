import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 20, 97),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("My Flutter Project"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            tooltip: "notification",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            tooltip: "settings",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            tooltip: "about_info",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7), // Amber
        foregroundColor: Colors.black, // Icon color

        onPressed: () {},
        tooltip: "Add",
        elevation: 50,
        child: const Icon(Icons.add_box_sharp),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 169, 244),
                ), // Light blue
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text("Home Page"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              title: const Text("Profile Page"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.newspaper),
              title: const Text("Blog & Newsletter"),
            ),
            const Divider(),
            const Spacer(), // pushes the next widgets to the bottom
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.info),
              title: const Text("About"),
            ),
          ],
        ),
      ),
      body: Text(
        "Hello",
        style: TextStyle(
          fontSize: 60,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(221, 139, 96, 130), // Blue-grey text
        ),
      ),
    );
  }
}
