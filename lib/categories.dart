import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  // const MyCategory({super.key});
  final String child;

  const MyCategory({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: InkWell(
          onTap: () => (),
          child: Tab(
            child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: Colors.blue[200],
                ),
                child: Center(
                  child: Text(
                    child,
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          )),
    );
  }
}
