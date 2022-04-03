import 'package:flutter/material.dart';

class tileFront extends StatelessWidget {
  tileFront(
      {Key? key,
      this.width = 1,
      this.hight = 1,
      required this.index,
      required this.partSize,
      required this.ch,
      required this.goIntoSpace,
      this.isReady = true,
      this.tileColor = Colors.lime,
      this.borderAndShadowColor = Colors.lightGreen,
      this.backgroundImageAssetPath})
      : super(key: key);
  int width, hight, index;
  double partSize;
  Color tileColor, borderAndShadowColor;
  Function goIntoSpace;
  bool isReady;
  Widget ch;
  String? backgroundImageAssetPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isReady) goIntoSpace(index);
      },
      child: Container(
          width: partSize * width,
          height: partSize * hight,
          clipBehavior: Clip.hardEdge,
          decoration: backgroundImageAssetPath == null
              ? BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                  color: tileColor,
                  border: Border.all(color: borderAndShadowColor, width: 1),
                  boxShadow: [
                      BoxShadow(
                        color: borderAndShadowColor.withAlpha(200),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                          0.0,
                          3.0,
                        ),
                      )
                    ])
              : BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                  color: tileColor,
                  border: Border.all(color: borderAndShadowColor, width: 1),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(backgroundImageAssetPath!)),
                  boxShadow: [
                      BoxShadow(
                        color: borderAndShadowColor.withAlpha(200),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                          0.0,
                          3.0,
                        ),
                      )
                    ]),
          child: ch),
    );
  }
}
