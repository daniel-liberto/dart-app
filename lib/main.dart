import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(MaterialApp(
  //   home: Scaffold(
  //     appBar: AppBar(title: const Text('App Hello World')),
  //     body: const Center(
  //       child: Text(
  //         'Hello World!',
  //         style: TextStyle(fontSize: 50, color: Colors.black),
  //       ),
  //     ),
  //   ),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('App Hello World')),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
