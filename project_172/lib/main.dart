import 'package:flutter/material.dart';
import 'package:project_172/auth/login_page.dart';
import 'package:project_172/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project_172/auth/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jfgzadcipvoyduvsippa.supabase.co',
    anonKey: 'sb_publishable_GcoGtwK0oi6zhHFwVM1QOA_tlJmyy-j',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Keeper',
      themeMode: ThemeMode.dark, // Locks to dark
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.blueGrey,
      ),
      home: AuthGate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
