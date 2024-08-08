import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Icon(Icons.arrow_back)),
          title: Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink.shade100),
              child: Column(
                children: [],
              )),
        ));
  }
}
