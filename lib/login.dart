import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart'; // Import the RegisterScreen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      //this commit is not changing 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Page',
              style: TextStyle(fontSize: 24),
            ),
            // Add your login form here
            
            ElevatedButton(
              onPressed: () => _navigateToHome(context),
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () => _navigateToRegister(context),
              child: Text('Create an Account'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    // Replace with login logic
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  void _navigateToRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterScreen(),
      ),
    );
  }
}
