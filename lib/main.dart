import 'package:flutter/material.dart';
import 'Screens/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WorkToDo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loading_Screen(),
    );
  }
}


