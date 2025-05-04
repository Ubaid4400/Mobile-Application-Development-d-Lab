import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner:false,
    home:HomeScreen(),
    routes: {
      '/add':(context)=> AddTaskScreen(),
      '/about':(context)=> ProfileScreen(),
    
    },
  )
);