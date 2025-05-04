import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

// Screen 1: Splash Screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/p1.png', // Replace with your asset path
                width: 120,
                height: 120,
              ),
              SizedBox(height: 20),
              Text('Double tap logo to continue', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

// Screen 2: Tabbed Information Screen (Tabs at Bottom)
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your Name'), // Replace with your actual name
        ),
        body: TabBarView(
          children: [
            InfoTab(
              text: 'I am a student passionate about technology and innovation.',
            ),
            InfoTab(
              text: 'My hometown is a peaceful place with rich culture and history.',
            ),
            InfoTab(
              text: 'I study at Bahria University where I engage in academics and campus life.',
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.blue,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'About Me'),
              Tab(icon: Icon(Icons.location_city), text: 'Hometown'),
              Tab(icon: Icon(Icons.school), text: 'Student Life'),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTab extends StatelessWidget {
  final String text;

  InfoTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onLongPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThirdScreen(detailText: text),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// Screen 3: Detailed Information
class ThirdScreen extends StatelessWidget {
  final String detailText;

  ThirdScreen({required this.detailText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Detailed Info'),
                content: Text(
                  '$detailText\n\nHere is the more detailed description of the topic...',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              detailText,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
