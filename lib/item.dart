import 'package:flutter/material.dart';
import 'package:flutter_app/price_button.dart';

class MyItem extends StatelessWidget {
  // const MyCategory({super.key});
  final String name;

  const MyItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Center(
            // child: SizedBox(child: Icon(Icons.coffee_rounded)),
            child: Image(
              image: NetworkImage(
                  'https://tb-static.uber.com/prod/image-proc/processed_images/9ef626cdbc3862ccaf39a4e12ad06e37/5954bcb006b10dbfd0bc160f6370faf3.jpeg'),
            ),
          ),
          Center(
            child: Text(
              name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Center(
            // child: MyPriceButton(),
            child: MyPricedButton(),
          ),
        ],
      ),
    );
  }
}
