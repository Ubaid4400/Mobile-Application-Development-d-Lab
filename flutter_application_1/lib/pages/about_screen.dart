import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Me")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 50),
            SizedBox(height: 20),
            Text("Your Name", style: TextStyle(fontSize: 20)),
            Text("Phone: 123-456-7890"),
            Text("Email: you@example.com"),
            Text("BS(CS)-6A"),
          ],
        ),
      ),
    );
  }
}