import 'package:flutter/material.dart';

class Child_x2y2 extends StatelessWidget {
  Child_x2y2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'MojaWizytówka!',
            textAlign: TextAlign.center,
          ),
          Text(
            'DANIEL',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
  }
}

class ChildFront_x2y2 extends StatelessWidget {
  ChildFront_x2y2({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'MójWszechświat!',
            textAlign: TextAlign.center,
          ),
          Text(
            'DANIEL',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
        ],
      ),
    );
    ;
  }
}
