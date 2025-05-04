import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  @override
  _AddContactScreenState createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Contact")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Enter Name'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(hintText: 'Enter Phone'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isNotEmpty && 
                    _phoneController.text.isNotEmpty) {
                  Navigator.pop(context, {
                    'name': _nameController.text,
                    'phone': _phoneController.text
                  });
                }
              },
              child: Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}