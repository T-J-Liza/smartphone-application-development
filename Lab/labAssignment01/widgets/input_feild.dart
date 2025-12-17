//class create korbo stateless widget use kore
import 'package:flutter/material.dart';

class inputFeild extends StatelessWidget {
  final controller, keyboardType, label, hint, icon, errorText;
  const inputFeild({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.label,
    required this.hint,
    required this.icon,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: keyboardType == TextInputType.text,

      decoration: InputDecoration(
        errorText: errorText,
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}
