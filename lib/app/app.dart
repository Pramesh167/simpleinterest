import 'package:flutter/material.dart';
import 'package:simpleinterest/screens/simple_intrest_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Interest'),
        ),
        body: const SimpleInterest(),
      ),
    );
  }
}