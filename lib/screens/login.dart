import 'package:booktickets/screens/bottom_bar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your email';
                //   }
                //   if (!isValidEmail(value)) {
                //     return 'Please enter a valid email address';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your password';
                //   }
                //   if (value.length < 6) {
                //     return 'Password must be at least 6 characters long';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, perform login or authentication logic here
                    // You can access the email and password using _emailController.text and _passwordController.text
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomBar()),
                      );   // Navigate to the next page
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // bool isValidEmail(String email) {
  //   // Simple email validation using a regular expression
  //   final emailRegExp =
  //       RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  //   return emailRegExp.hasMatch(email);
  // }
}
