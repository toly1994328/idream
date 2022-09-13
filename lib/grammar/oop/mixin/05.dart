import 'package:flutter/material.dart';

void main() {
  // C c = C();
  // c.log(); // B
}


mixin LogStateMixin<T extends StatefulWidget> on State<T> {

  @override
  void initState() {
    super.initState();
    print("====initState====");
  }

  @override
  void dispose() {
    super.dispose();
    print("====dispose====");
  }
}