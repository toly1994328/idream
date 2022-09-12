import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class LineNumShower extends StatelessWidget {
  const LineNumShower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("94.03,"),
        Text("3.28,"),
        Text("4.28,"),
        Text("5.28"),
      ],
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: LineNumShower()),
    );
  }
}


