import 'package:flutter/material.dart';
import 'package:project/server/server.dart';
import 'package:project/tabs/provider.dart';
import 'package:project/tabs/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Space',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: SplashScreen(Server(), UserData()),
    );
  }
}
