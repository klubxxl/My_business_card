import 'package:flutter/material.dart';

class tile extends StatelessWidget {
  tile(
      {Key? key,
      this.width = 1,
      this.hight = 1,
      required this.index,
      required this.partSize,
      required this.ch,
      this.tileColor = Colors.grey,
      this.backgroundImageAssetPath})
      : super(key: key);
  int width, hight, index;
  double partSize;
  Color tileColor;
  Widget ch;
  String? backgroundImageAssetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: partSize * width,
        height: partSize * hight,
        decoration: backgroundImageAssetPath == null
            ? BoxDecoration(
                color: tileColor,
                border: Border.all(color: Colors.white12),
              )
            : BoxDecoration(
                border: Border.all(color: Colors.white12),
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(backgroundImageAssetPath!))),
        child: ch);
  }
}
