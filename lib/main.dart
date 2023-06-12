import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(
    const MaterialApp(
      home: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
      ),
    ),
  );
}
