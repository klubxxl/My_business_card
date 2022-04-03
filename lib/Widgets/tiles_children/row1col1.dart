import 'package:flutter/material.dart';

class Child_x1y3 extends StatelessWidget {
  Child_x1y3({Key? key, this.visits = 1}) : super(key: key);

  int visits;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Transform.rotate(
            angle: -1.50 / 2,
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$visits',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 80),
                  ),
                  const Text(
                    'wejść',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            )));
  }
}

class ChildFront_x1y3 extends StatelessWidget {
  ChildFront_x1y3({Key? key, this.taps = 0, this.notNow = false})
      : super(key: key);

  int taps;
  bool notNow;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Transform.rotate(
            angle: -1.50 / 2,
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notNow ? (taps - 1).toString() : taps.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 80),
                  ),
                  const Text(
                    'kliknięć',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            )));
  }
}
