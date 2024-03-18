import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto/Services/auth.dart';
import 'package:proyecto/Services/globals.dart';
import 'package:proyecto/components/myButton.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto/login.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String btnText;
  final Function? onBtnPressed;

  RegisterPage({Key? key, this.btnText = 'Register', this.onBtnPressed})
      : super(key: key);
  void registerUser(BuildContext context) async {
    String _email = emailController.text.trim();
    String _password = passwordController.text.trim();
    String _name = nameController.text.trim();

    if (_email.isEmpty || _password.isEmpty || _name.isEmpty) {
      errorSnackBar(context, 'Please fill in all fields');
      return;
    }

    bool emailValid =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
            .hasMatch(_email);
    if (!emailValid) {
      errorSnackBar(context, 'Invalid email format');
      return;
    }

    http.Response response =
        await AuthServices.register(_name, _email, _password);
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(title: ""),
        ),
      );
    } else {
      Map<String, dynamic> responseMap = jsonDecode(response.body);
      String errorMessage = responseMap['error'] ?? 'Registration failed';
      errorSnackBar(context, errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Account'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF212121), // Dark grey
              Color(0xFF424242), // Darker grey
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nameController,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  filled: true, // Opaque background
                  fillColor: Colors.grey[800], // Background color
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  filled: true, // Opaque background
                  fillColor: Colors.grey[800], // Background color
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Colors.white), // Label text color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  filled: true, // Opaque background
                  fillColor: Colors.grey[800], // Background color
                ),
              ),
              SizedBox(height: 16),
              MyButton(
                onTap: () => registerUser(context),
                child: Center(
                  child: Text(
                    btnText,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
