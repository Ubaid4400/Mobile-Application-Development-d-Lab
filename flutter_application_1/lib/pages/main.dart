import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'add_contact_screen.dart';
import 'about_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    routes: {
      '/add': (context) => AddContactScreen(),
      '/about': (context) => AboutScreen(),
    },
  ),
);