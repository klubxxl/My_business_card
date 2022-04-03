import 'package:flutter/material.dart';

class Child_x1y23 extends StatelessWidget {
  Child_x1y23({Key? key, required this.asstePath}) : super(key: key);

  String asstePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asstePath,
      fit: BoxFit.cover,
    );
  }
}

class ChildFront_x1y23 extends StatelessWidget {
  ChildFront_x1y23({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
