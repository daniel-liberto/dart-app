import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('App Hello World')),
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ),
    ),
  ));
}
