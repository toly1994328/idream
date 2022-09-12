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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ), //
      body: Center(child: _buildContent()),
    );
  }

  Widget _buildContent() {
    return  MatrixShower(
      list16: [
        1, 0, 1, _counter,
        0, 1, 0, 100,
        0, 0, 1, 0,
        0, 0, 0, 1
      ],
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter +=10;
    });
  }
}
