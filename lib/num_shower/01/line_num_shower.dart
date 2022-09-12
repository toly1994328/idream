import 'package:flutter/material.dart';

class LineNumShower extends StatelessWidget {
  const LineNumShower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("94.03,"),
        Text("3.28,"),
        Text("4.28,"),
        Text("5.28"),
      ],
    );
  }
}