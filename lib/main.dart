import 'package:flutter/material.dart';
import 'package:flutter_app/item.dart';
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
              Expanded(
                flex: 1,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Text(
                        _categories[0],
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SliverGrid(
                      gridDelegate:
                          //   const SliverGridDelegateWithFixedCrossAxisCount(
                          // crossAxisCount: 2,
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300.0,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        childCount: _coffee.length,
                        // (BuildContext context, index) {
                        (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8, left: 8),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    alignment: Alignment.center,
                                    // color: Colors.orange[100 * (index % 9 + 1)],
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      shape: BoxShape.rectangle,
                                      color: Colors.blue[200],
                                    ),
                                    // child: Text('item ${index + 1}'),
                                    child: MyItem(name: _coffee[index]),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        _categories[1],
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SliverGrid(
                      gridDelegate:
                          //   const SliverGridDelegateWithFixedCrossAxisCount(
                          // crossAxisCount: 2,
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300.0,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        childCount: _coffee.length,
                        // (BuildContext context, index) {
                        (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8, left: 8),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    alignment: Alignment.center,
                                    // color: Colors.orange[100 * (index % 9 + 1)],
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      shape: BoxShape.rectangle,
                                      color: Colors.blue[200],
                                    ),
                                    // child: Text('item ${index + 1}'),
                                    child: MyItem(
                                      name: _coffee[index],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Text(
                        _categories[2],
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SliverGrid(
                      gridDelegate:
                          //   const SliverGridDelegateWithFixedCrossAxisCount(
                          // crossAxisCount: 2,
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300.0,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1.0,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        childCount: _coffee.length,
                        // (BuildContext context, index) {
                        (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8, left: 8),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    alignment: Alignment.center,
                                    // color: Colors.orange[100 * (index % 9 + 1)],
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      shape: BoxShape.rectangle,
                                      color: Colors.blue[200],
                                    ),
                                    // child: Text('item ${index + 1}'),
                                    child: MyItem(
                                      name: _coffee[index],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
