import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is Detail Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
            itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.green,
            height: 300,
            width: 300,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/EditPage');
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
    
  }
}
