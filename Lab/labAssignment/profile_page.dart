import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProfilePage"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 172, 193, 204),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,

                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter Name...",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text("Submit")),
                  SizedBox(height: 20),
                  Text("Name is:"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
