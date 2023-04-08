import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 24),
            ),
            // Add your home screen content here
            ElevatedButton(
              onPressed: () {
                // Replace with log out logic
                Navigator.pop(context);
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
