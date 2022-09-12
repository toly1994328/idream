import 'package:flutter/material.dart';

import 'line_num_shower.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildContent()),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LineNumShower(nums: [1, 0, 0, 0]),
        LineNumShower(nums: [0, 1, 0, 0]),
        LineNumShower(nums: [0, 0, 1, 0]),
        LineNumShower(nums: [0, 0, 0, 1]),
      ],
    );
  }
}
