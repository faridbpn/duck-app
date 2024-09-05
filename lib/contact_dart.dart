import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  final List<Map<String, String>> users = [
    {
      'name': 'Farid',
      'phone': '08123456789',
      'image': 'image/p.gif',
    },
    {
      'name': 'ucup',
      'phone': '08123456789',
      'image': 'image/p.gif',
    },
    {
      'name': 'Farid',
      'phone': '08123456789',
      'image': 'image/p.gif',
    },
    {
      'name': 'Farid',
      'phone': '08123456789',
      'image': 'image/p.gif',
    },
    {
      'name': 'Farid',
      'phone': '08123456789',
      'image': 'image/p.gif',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(users[index]['image']!),
            ),
            title: Text(users[index]['name']!),
            subtitle: Text(users[index]['phone']!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/ProductPage');
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
