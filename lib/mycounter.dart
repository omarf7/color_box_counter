import 'package:flutter/material.dart';
import 'package:stateful_widget/util/box.dart';
import 'package:stateful_widget/util/color_manager.dart';

class Mycounter extends StatefulWidget {
  const Mycounter({Key? key}) : super(key: key);

  @override
  State<Mycounter> createState() => _MycounterState();
}

class _MycounterState extends State<Mycounter> {
  int number = 0;
  static const List<Color> color = ColorManager.color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$number",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text("+"),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
                  child: Text("-"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Box(number: number, color: color),
          ],
        ),
      ),
    );
  }
}
