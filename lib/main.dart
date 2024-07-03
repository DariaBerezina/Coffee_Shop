import 'package:flutter/material.dart';
import 'package:flutter_app/categories.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 230),
        body: Column(
          children: [
            //using categories
            Expanded(
              child: ListView.builder(
                itemCount: _categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCategory(
                    child: _categories[index],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
