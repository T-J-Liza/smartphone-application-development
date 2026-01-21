import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project_172/widget/input.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final supabase = Supabase.instance.client;

  Future<void> _login() async {
    try {
      await supabase.auth.signInWithPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Login failed: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.note_alt,
              size: 80,
              color: const Color.fromARGB(255, 65, 62, 62),
            ),
            SizedBox(height: 32),
            Text('Login', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 24),
            CustomInput(
              label: 'Email',
              controller: _emailController,
              keyboardType: TextInputType.text,
              hint: 'Enter your e-mail',
              icon: Icons.email,
            ),
            SizedBox(height: 10),
            CustomInput(
              label: 'Password',
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              hint: 'Enter password',
              icon: Icons.password,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RegisterPage()),
              ),
              child: Text('Register instead'),
            ),
          ],
        ),
      ),
    );
  }
}
