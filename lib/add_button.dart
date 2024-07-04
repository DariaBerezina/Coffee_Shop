import 'package:flutter/material.dart';

class MyAddButton extends StatefulWidget {
  // const MyCategory({super.key});
  // final ElevatedButton price;

  const MyAddButton({super.key});

  @override
  State<MyAddButton> createState() => _MyAddButtonState();
}

class _MyAddButtonState extends State<MyAddButton> {
  int click = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 164, 204, 236),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                    icon: const Icon(Icons.indeterminate_check_box_rounded),
                    iconSize: 20,
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        if (click >= 2) {
                          click -= 1;
                        } else {
                          click = 1;
                        }
                      });
                    }),
                Text(
                  '$click',
                  style: Theme.of(context).textTheme.titleSmall,
                  selectionColor: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.add_box_rounded),
                  iconSize: 20,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (click != 10) {
                        click += 1;
                      } else {
                        click = 10;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
