import 'package:flutter/material.dart';
import 'package:flutter_app/tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List _categories = [
    'Черный кофе',
    'Кофе с молоком',
    'Авторский кофе',
  ];

  final List _coffee = [
    'Олеато',
    'Олеато',
    'Олеато',
    'Олеато',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 252, 252),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, top: 64, right: 32, bottom: 8),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyTabBar(),
              SizedBox(
                height: 8,
              ),
            ]),
      ),
    );
  }
}
