import 'package:flutter/material.dart';

class Child_x3y1 extends StatelessWidget {
  Child_x3y1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        width: (MediaQuery.of(context).size.width - 10) / 3 - 10,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.contact_mail),
              Text(
                ' KONTAKT:',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        width: (MediaQuery.of(context).size.width - 10) / 3 - 10,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              Text(
                ' 505346633',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class ChildFront_x3y1 extends StatelessWidget {
  ChildFront_x3y1({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
        width: MediaQuery.of(context).size.width <
                MediaQuery.of(context).size.height
            ? (MediaQuery.of(context).size.width - 10) / 3 / 2 - 10
            : (MediaQuery.of(context).size.height - 10) / 3 / 2 - 10,
        child: const FittedBox(
            fit: BoxFit.fitWidth,
            child: Center(
              child: Icon(Icons.contact_mail),
            )),
      ),
      SizedBox(
        width: (MediaQuery.of(context).size.width - 10) / 3 - 10,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              Text(
                ' ZADZWOŃ\nDO MNIE\nKSIĘŻYCEM',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ]);
    ;
  }
}
