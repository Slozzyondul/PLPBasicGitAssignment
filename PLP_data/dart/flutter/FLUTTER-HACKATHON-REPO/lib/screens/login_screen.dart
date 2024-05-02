import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
                // For example, you can validate the username and password
                // and navigate to the tasks screen if they are valid

                //simulating succesful login for demonstration purpose
                bool isLoggedIn = true;

                if (isLoggedIn) {
                  //navigate ack to the previous screen (task screen)
                  Navigator.pop(context);
                } else {
                  //handle unsuccessul login logic coming after linking to a database
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
