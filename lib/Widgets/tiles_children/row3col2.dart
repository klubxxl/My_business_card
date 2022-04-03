import 'package:flutter/material.dart';

class Child_x2y1 extends StatelessWidget {
  Child_x2y1({Key? key, required this.desc}) : super(key: key);

  String desc;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      //fit: BoxFit.fitWidth,
      child: Column(
        children: [
          const Text(
            'POZA ZAJAWKĄ \nNA PUNKCIE IT',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 10),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            desc,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ChildFront_x2y1 extends StatelessWidget {
  ChildFront_x2y1({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.fitWidth,
      child: Center(
        child: DefaultTextStyle(
            style: TextStyle(
                color: Colors.black, //fromARGB(255, 250, 248, 145),
                fontFamily: 'LibreBaserville'),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'MIMO \nWSZYSTKICH\nHOBBY\nOD DZIECKA\nNAJBARDZIEJ\nJARAŁY MNIE\nKOMPUTERY',
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
