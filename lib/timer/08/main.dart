import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(const StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemUiOverlayStyle overlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff3BBD5B),
          // primaryColor: Colors.orange,
          // primaryColor: Colors.blue,
          appBarTheme: AppBarTheme(
        systemOverlayStyle: overlayStyle,
      )),
      home: const HomePage(),
    );
  }
}
