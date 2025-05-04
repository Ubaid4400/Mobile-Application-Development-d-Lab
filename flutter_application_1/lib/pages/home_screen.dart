import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phonebook"),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () => Navigator.pushNamed(context, '/about'),
          )
        ],
      ),
      body: contacts.isEmpty
          ? Center(child: Text("No contacts found"))
          : ListView(
              children: contacts.map((contact) {
                return ListTile(
                  title: Text(contact['name']!),
                  subtitle: Text(contact['phone']!),
                );
              }).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newContact = await Navigator.pushNamed(context, '/add');
          if (newContact != null) {
            setState(() {
              contacts.add(newContact as Map<String, String>);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}