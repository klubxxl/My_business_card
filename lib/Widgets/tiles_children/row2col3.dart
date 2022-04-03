import 'package:flutter/material.dart';

class Child_x3y2 extends StatelessWidget {
  Child_x3y2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ChildFront_x3y2 extends StatelessWidget {
  ChildFront_x3y2({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'Assets/Images/DanielHappy.jpg',
      fit: BoxFit.cover,
    );
  }
}
