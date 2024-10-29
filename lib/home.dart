import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 
  final Color sageGreen = Color(0xFF9CAF88); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sageGreen, 
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: sageGreen, 
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/user_avatar.png'), 
                  ),
                  SizedBox(height: 10),
                  Text(
                    'George Intot',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'GeorgeIntot@example.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black), 
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome, George Intot!',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Track Your Workouts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Stay on top of your fitness goals!',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.fitness_center, color: Colors.black), 
                      label: Text(
                        'Start Workout',
                        style: TextStyle(color: Colors.black), 
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: sageGreen, 
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Your Progress',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'View your workout history and personal records.',
                      style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.bar_chart, color: Colors.black),
                      label: Text(
                        'View Progress',
                        style: TextStyle(color: Colors.black), 
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: sageGreen,
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
