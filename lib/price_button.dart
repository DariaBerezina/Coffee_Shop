import 'package:flutter/material.dart';

class MyPricedButton extends StatefulWidget {
  const MyPricedButton({super.key});

  @override
  State<MyPricedButton> createState() => _MyPriceButtonState();
}

class _MyPriceButtonState extends State<MyPricedButton> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 35,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child:
                  Text('Цена', style: Theme.of(context).textTheme.titleSmall)),
        )
      ],
    );
  }
}
