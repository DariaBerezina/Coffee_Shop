import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  // const MyCategory({super.key});
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int current = 0;
  final List _categories = [
    'Черный кофе',
    'Кофе с молоком',
    'Авторский кофе',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 350,
      child: Expanded(
        flex: 1,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: _categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  current = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.all(5),
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: current == index
                      ? Color.fromARGB(255, 172, 209, 239)
                      : Colors.blue[50],
                  borderRadius: current == index
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(10),
                  // border: current == index
                  //     ? Border.all(color: Colors.white, width: 4)
                  //     : null),
                ),
                child: SizedBox(
                    height: 80,
                    width: 150,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(30),
                    //   shape: BoxShape.rectangle,
                    //   color: Colors.blue[50],
                    // ),
                    child: Center(
                      child: Text(
                        _categories[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color:
                                current == index ? Colors.white : Colors.black),
                      ),
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
