import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
        
      ),
      body:
           Center(child: Image.asset('assets/52f69955-1805-4cea-a4e4-58b572d54220.jpeg')
            ),
      
    );
  }
}
