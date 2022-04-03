import 'package:flutter/material.dart';

class Child_x23y3 extends StatelessWidget {
  Child_x23y3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: FittedBox(
        //fit: BoxFit,
        child: Row(
          children: [
            const Text(
                'CHCĄ POSIĄŚĆ\nTWARDE \nUMIEJĘTNOŚCI\nI ZOBACZYĆ JAK\nWYGLĄDA PRACA\nZ FLUTTEREM \nW PRAKTYCE',
                textAlign: TextAlign.left),
            Container(
              constraints: const BoxConstraints(minWidth: 1, maxWidth: 100),
              child: Transform.rotate(
                angle: 0.5,
                child: Image.asset(
                  'Assets/Images/logoDroidsOnRoads.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChildFront_x23y3 extends StatelessWidget {
  ChildFront_x23y3({Key? key, this.notNow = false}) : super(key: key);

  bool notNow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: FittedBox(
        //fit: BoxFit,
        child: Row(
          children: [
            const Text(
              'TAK \nNAPRAWDĘ\nCHCĘ\nPOZNAĆ\nI UCZYĆ SIĘ OD \nNAJLEPSZYCH\nMENTORÓW',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 10),
            ),
            Container(
              constraints: BoxConstraints(minWidth: 1, maxWidth: 100),
              child: Transform.scale(
                  scaleX: 1.2,
                  scaleY: 1.2,
                  child: Image.asset('Assets/Images/MentorzyIJa.png')),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
