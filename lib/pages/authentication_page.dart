import 'package:fitness_ai/components/my_button.dart';
import 'package:fitness_ai/components/my_textfield.dart';
import 'package:fitness_ai/components/square_tile.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({super.key});

  // textfield controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in
  void signUserIn() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              //logo
              Icon(Icons.lock, size: 100),

              SizedBox(height: 30),
              // welcome back, you've been missed!
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              SizedBox(height: 10),

              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Enter username',
                obscureText: false,
              ),
              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              // forgot password?
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot passowrd?",
                      style: TextStyle(color: Colors.red.shade300),
                    ),
                  ],
                ),
              ),

              //sign in button
              MyButton(onTap: signUserIn),

              SizedBox(height: 10),

              // or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 0.5, color: Colors.grey[400]),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or Continue with",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 0.5, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 30),
              // google + applee sign ing buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/google_logo.png'),
                  SizedBox(width: 20),
                  SquareTile(imagePath: 'assets/images/apple_logo.png'),
                ],
              ),

              SizedBox(height: 30),
              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 4),
                  Text(
                    'register',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
