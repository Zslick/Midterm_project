import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final Color sageGreen = Color(0xFF9CAF88); // Using the same color as the ProfileScreen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: sageGreen, // Same AppBar color as ProfileScreen
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/user_avatar.png'), // Same avatar style as ProfileScreen
            ),
            SizedBox(height: 20),
            Text(
              'Welcome Back!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, 
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
            
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: sageGreen, 
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
