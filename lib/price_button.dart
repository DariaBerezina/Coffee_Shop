import 'package:flutter/material.dart';
import 'package:flutter_app/add_button.dart';

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
              color: Color.fromARGB(255, 164, 204, 236),
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Text('Цена', style: Theme.of(context).textTheme.titleSmall),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Visibility(
          visible: isVisible,
          child: MyAddButton(),
        ),
      ],
    );
  }
}
