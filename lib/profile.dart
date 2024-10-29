import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Color sageGreen = Color(0xFF9CAF88);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
        backgroundColor: sageGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/user_avatar.png'),
            ),
            SizedBox(height: 20),
            Text(
              'George Intot',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'GeorgeIntot@example.com',
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 67, 66, 66),
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings'),
              onTap: () {
               
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black),
              title: Text('Logout'),
              onTap: () {
                
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/subscription');
              },
              icon: Icon(Icons.subscriptions, color: Colors.black),
              label: Text(
                'View Subscription Details',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: sageGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
