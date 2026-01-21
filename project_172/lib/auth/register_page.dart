import 'package:flutter/material.dart';
import 'package:project_172/auth/login_page.dart';
import 'package:project_172/home_page.dart';
import 'package:project_172/widget/input.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cPasswordController = TextEditingController();
  bool _isLoading = false; // check whether registration is happen or not
  final _supabase = Supabase.instance.client;

  void register() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    setState(() {
      _isLoading = true;
    });

    try {
      final authResponse = await _supabase.auth.signUp(
        email: email,
        password: password,
      );

      final user = authResponse.user;
      if (user != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Registered Successfully!!")));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }

      _emailController.clear();
      _passwordController.clear();
      _cPasswordController.clear();
    } on AuthApiException catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        backgroundColor: const Color.fromARGB(255, 12, 34, 45),
      ),
      body: Center(
        child: SizedBox(
          width: 450,
          height: 500,
          child: Card(
            color: const Color.fromARGB(255, 35, 36, 36),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.note_alt,
                      size: 80,
                      color: const Color.fromARGB(255, 65, 62, 62),
                    ),
                    Text("Register Form", style: TextStyle(fontSize: 20)),
                    SizedBox(height: 30),

                    CustomInput(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      label: "Email",
                      hint: "Enter Email",
                      icon: Icons.email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter email";
                        }
                        if (!RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        ).hasMatch(value)) {
                          return "Enter a valid email!!";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),

                    CustomInput(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      label: "Password",
                      hint: "Enter Password",
                      icon: Icons.lock,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter password";
                        }
                        if (value.length < 8) {
                          return "Length must be more than 8";
                        }
                        if (!RegExp(
                          r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$',
                        ).hasMatch(value)) {
                          return "Enter a strong password!!";
                        }
                        if (_passwordController.text !=
                            _cPasswordController.text) {
                          return "Password and confirm password don't match";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),

                    CustomInput(
                      controller: _cPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      label: "Confirm Password",
                      hint: "Enter Confirm Password",
                      icon: Icons.lock,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter confirm password";
                        }
                        if (value.length < 8) {
                          return "Length must be more than 8";
                        }
                        if (!RegExp(
                          r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$',
                        ).hasMatch(value)) {
                          return "Enter a strong password!!";
                        }
                        if (_passwordController.text !=
                            _cPasswordController.text) {
                          return "Password and confirm password don't match";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          register();
                        }
                      },
                      child: _isLoading
                          ? CircularProgressIndicator()
                          : Text("Register"),
                    ),
                    SizedBox(height: 20),

                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ),
                      child: Text("Already have an account? Login"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
