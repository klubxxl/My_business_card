import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/tile.dart';
import '../Widgets/tile_front.dart';
import '../Widgets/tiles_children/row3col3.dart';
import '../Widgets/tiles_children/row1col1.dart';
import '../Widgets/tiles_children/row1col23.dart';
import '../Widgets/tiles_children/row23col1.dart';
import '../Widgets/tiles_children/row2col2.dart';
import '../Widgets/tiles_children/row2col3.dart';
import '../Widgets/tiles_children/row3col2.dart';
import '../Helpers/taps.dart';
import '../Helpers/visits.dart';

class MyBusinessCardScreen extends StatefulWidget {
  const MyBusinessCardScreen({Key? key}) : super(key: key);
  @override
  _MyBusinessCardScreenState createState() => _MyBusinessCardScreenState();
}

class _MyBusinessCardScreenState extends State<MyBusinessCardScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController, _stardedAdnimationController;
  late Animation _backgroundColorAnimation;
  late AnimationController _tile0animation,
      _tile1animation,
      _tile2animation,
      _tile3animation,
      _tile4animation,
      _tile5animation;

  Duration tilesAnimationDuration = const Duration(milliseconds: 90);
  bool weAreInTheSpace = false, visitedGetted = false, isReady = false;
  int indexOfChosenTile = -1, previousIndexOfChosenTile = -1, hobbyIndex = 0;
  int visits = -1, taps = 0;

  Map<String, String> hobbies = {
    'UWIELBIAM \nBIEGAĆ': 'Assets/Images/hobbies/Running.png',
    'PASJONUJE\nMNIE\nNARCIARSTWO': 'Assets/Images/hobbies/ski.png',
    'I ZALEDWIE\n1000 PKT NA\nCHESS.COM,\nUWIELBIAM\nSZACHY':
        'Assets/Images/hobbies/Chess.png',
    'OD NIEDAWNA\nTRENUJĘ\nBOKS': 'Assets/Images/hobbies/Box.png',
    'JESTEM \nFANEM\nGIER\nPLANSZOWYCH': 'Assets/Images/hobbies/BoardGames.png',
    'KIBICUJE\nCAŁYM\nSERCEM': 'Assets/Images/hobbies/supporting.png',
    'SZALEJĘ\nZA WSPÓLNYMI\nPODRÓŻAMI': 'Assets/Images/hobbies/girl.png',
    'KOCHAM\nGÓRY': 'Assets/Images/hobbies/Mountains.png',
    'LUBIĘ\nZBIERAĆ\nSKARBY\n(GEOCACHING)':
        'Assets/Images/hobbies/geocaching.png',
    'DBAM O\nZDROWIE\nW ZIMNEJ\nWODZIE':
        'Assets/Images/hobbies/winterSwimming2.png',
    'JESIENIĄ LUBIĘ\nZBIERAĆ GRZYBY': 'Assets/Images/hobbies/Mushroms.png',
    'RELAKSUJĘ\nSIĘ \nWĘDKUJĄC': 'Assets/Images/hobbies/Fishing2.png',
  };

  @override
  void initState() {
    super.initState();

    weAreInTheSpace = false;

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(milliseconds: 200));

    _tile0animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );
    _tile1animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );
    _tile2animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );
    _tile3animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );
    _tile4animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );
    _tile5animation = AnimationController(
      vsync: this,
      duration: tilesAnimationDuration,
    );

    _backgroundColorAnimation = ColorTween(
            begin: Colors.white, end: const Color.fromARGB(255, 24, 24, 24))
        .animate(_animationController);

    _stardedAdnimationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 2000),
        lowerBound: 0,
        upperBound: 0.5,
        value: 0.5);

    getVisits();
    getTaps();

    _stardedAdnimationController.addListener(() {
      if (_stardedAdnimationController.value == 0) {
        setState(() {
          isReady = true;
        });
      }
    });
    _stardedAdnimationController.reverse();
  }

  @override
  void dispose() {
    super.dispose();
    _stardedAdnimationController.dispose();
    _animationController.dispose();
    _tile0animation.dispose();
    _tile1animation.dispose();
    _tile2animation.dispose();
    _tile3animation.dispose();
    _tile4animation.dispose();
    _tile5animation.dispose();
  }

  Future<void> getVisits() async {
    visits = await Visits.getAndSetVisitsCount();
    visitedGetted = true;
  }

  Future<void> getTaps() async {
    taps = await Taps.getVisitCount();
  }

  Future<void> setTaps() async {
    await Taps.setVisitCount(taps);
  }

  @override
  Widget build(BuildContext context) {
    // variables
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _cardSizeWithoutMargin =
        _width < _height ? _width - 10 : _height - 10;
    double _partSize = _cardSizeWithoutMargin / 3;
    double _differenceBetweenHeightAndWidth =
        _height > _width ? _height - _width : _width - _height;

    // functions
    void spaceChanger(int index) {
      if (weAreInTheSpace == false) {
        _animationController.forward();
        switch (index) {
          case 0:
            _tile0animation.forward();
            break;
          case 1:
            _tile1animation.forward();
            break;
          case 2:
            _tile2animation.forward();
            break;
          case 3:
            _tile3animation.forward();
            break;
          case 4:
            _tile4animation.forward();
            break;
          case 5:
            _tile5animation.forward();
            break;
        }
      } else {
        _animationController.reverse();
        switch (indexOfChosenTile) {
          case 0:
            _tile0animation.reverse();
            break;
          case 1:
            _tile1animation.reverse();
            break;
          case 2:
            _tile2animation.reverse();
            break;
          case 3:
            _tile3animation.reverse();
            break;
          case 4:
            _tile4animation.reverse();
            break;
          case 5:
            _tile5animation.reverse();
            break;
        }
      }

      previousIndexOfChosenTile = indexOfChosenTile;
      setState(() {
        taps++;
        weAreInTheSpace = !weAreInTheSpace;
        if (indexOfChosenTile >= 0) {
          indexOfChosenTile = -1;
          if (previousIndexOfChosenTile == 2) {
            hobbyIndex++;
            hobbyIndex %= (hobbies.length);
          }
        } else {
          indexOfChosenTile = index;
        }
      });

      setTaps();
    }

    // business card widget
    Widget businessCardWidget = Column(children: [
      Row(
        children: [
          tile(
            partSize: _partSize,
            ch: visitedGetted
                ? Child_x1y3(
                    visits: visits,
                  )
                : FutureBuilder(
                    future: getVisits(),
                    builder: (ctx, fut) =>
                        fut.connectionState == ConnectionState.waiting
                            ? const CircularProgressIndicator()
                            : Child_x1y3(
                                visits: visits,
                              ),
                  ),
            index: 0,
          ),
          tile(
            partSize: _partSize,
            width: 2,
            ch: Child_x23y3(),
            index: 1,
          )
        ],
      ),
      Row(
        children: [
          tile(
            partSize: _partSize,
            hight: 2,
            ch: Child_x1y23(asstePath: hobbies.values.toList()[hobbyIndex]),
            index: 2,
          ),
          Column(children: [
            Row(
              children: [
                tile(
                  partSize: _partSize,
                  ch: Child_x2y2(),
                  index: 3,
                ),
                tile(
                  partSize: _partSize,
                  backgroundImageAssetPath: 'Assets/Images/DanielSadGrey.png',
                  ch: Child_x3y2(),
                  index: 4,
                )
              ],
            ),
            Row(
              children: [
                tile(
                  partSize: _partSize,
                  ch: Child_x2y1(desc: hobbies.keys.toList()[hobbyIndex]),
                  index: 2,
                ),
                tile(
                  partSize: _partSize,
                  ch: Child_x3y1(),
                  index: 5,
                )
              ],
            )
          ]),
        ],
      ),
    ]);

    Widget filteredBusinessCard = AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) => ColorFiltered(
          colorFilter: ColorFilter.mode(
              _backgroundColorAnimation.value, BlendMode.modulate),
          child: businessCardWidget),
    );

    List<Widget> spaceStackList = [
      Positioned(
        left: 0,
        top: 0,
        child: FadeTransition(
            opacity: _tile0animation,
            child: tileFront(
              index: 0,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              tileColor: Colors.amber,
              borderAndShadowColor: Colors.red,
              ch: ChildFront_x1y3(
                taps: taps,
                notNow: previousIndexOfChosenTile == 0,
              ),
            )),
      ),
      Positioned(
        right: 0,
        top: 0,
        child: FadeTransition(
            opacity: _tile1animation,
            child: tileFront(
              index: 1,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              ch: ChildFront_x23y3(),
              width: 2,
            )),
      ),
      Positioned(
        left: 0,
        bottom: 0,
        child: FadeTransition(
            opacity: _tile2animation,
            child: tileFront(
              index: 2,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              borderAndShadowColor: Colors.blue[100] as Color,
              backgroundImageAssetPath: 'Assets/Images/hobbies/IT.png',
              ch: ChildFront_x1y23(),
              hight: 2,
            )),
      ),
      Positioned(
        left: _partSize,
        bottom: _partSize,
        child: FadeTransition(
            opacity: _tile3animation,
            child: tileFront(
              index: 3,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              tileColor: const Color.fromARGB(255, 208, 255, 0),
              ch: ChildFront_x2y2(),
            )),
      ),
      Positioned(
        right: 0,
        bottom: _partSize,
        child: FadeTransition(
            opacity: _tile4animation,
            child: tileFront(
              index: 4,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              borderAndShadowColor: Colors.lightBlueAccent,
              ch: ChildFront_x3y2(),
            )),
      ),
      Positioned(
        left: _partSize,
        bottom: 0,
        child: FadeTransition(
            opacity: _tile2animation,
            child: tileFront(
              index: 2,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              tileColor: Colors.grey,
              borderAndShadowColor: Colors.blue[100] as Color,
              ch: ChildFront_x2y1(
                  //           size: _partSize,
                  ),
            )),
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: FadeTransition(
            opacity: _tile5animation,
            child: tileFront(
              index: 5,
              goIntoSpace: spaceChanger,
              isReady: isReady,
              partSize: _partSize,
              tileColor: Color.fromARGB(255, 255, 252, 104) as Color,
              borderAndShadowColor: Colors.amber,
              ch: ChildFront_x3y1(),
            )),
      ),
    ];

    List<Widget> appStackList = [
      SizedBox(
        height: _height,
        width: _width,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, __) => ColorFiltered(
            colorFilter: ColorFilter.mode(
                _backgroundColorAnimation.value, BlendMode.modulate),
            child: Image.asset(
              'Assets/Images/backgroundNew.JPG',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Stack(
        children: [
          Center(
              child: AnimatedBuilder(
            animation: _stardedAdnimationController,
            builder: (ctx, _) => Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateX(_stardedAdnimationController.value * -pi),
              child: Transform.translate(
                offset: Offset(_stardedAdnimationController.value * 50,
                    _stardedAdnimationController.value * 800),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.all(5),
                  width: _cardSizeWithoutMargin,
                  height: _cardSizeWithoutMargin,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: filteredBusinessCard,
                ),
              ),
            ),
          )),
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) => Opacity(
                opacity: _animationController.value,
                child: AnimatedBackground(
                  behaviour: RandomParticleBehaviour(
                    options: ParticleOptions(
                      image: Image.asset('Assets/Images/Star.png'),
                      spawnOpacity: 1,
                      opacityChangeRate: 0.01,
                      minOpacity: 0,
                      maxOpacity: 0.2,
                      spawnMinSpeed: 4.0,
                      spawnMaxSpeed: 30.0,
                      spawnMinRadius: 10,
                      spawnMaxRadius: 30.0,
                      particleCount: 50,
                    ),
                  ),
                  vsync: this,
                  child: Container(),
                )),
          ),
          Center(
            child: SizedBox(
              width: _cardSizeWithoutMargin,
              height: _cardSizeWithoutMargin,
              child: Stack(
                children: spaceStackList,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: _differenceBetweenHeightAndWidth / 30,
            child: SizeTransition(
              sizeFactor: _tile5animation,
              child: SizedBox(
                height: max(
                    _height * 0.2, _differenceBetweenHeightAndWidth / 3 * 2),
                width: _width / 2,
                child: GestureDetector(
                  onTap: () => launch("tel:+48 505346633"),
                  child: Image.asset('Assets/Images/MoonPhone.png',
                      fit: BoxFit.contain),
                ),
              ),
            ),
          )
        ],
      ),
    ];

    // screen build
    return Scaffold(
      body: Stack(children: appStackList),
    );
  }
}
