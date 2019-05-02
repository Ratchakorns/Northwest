import 'package:flutter/material.dart';
import 'package:northwest/widget/carditemmodel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  var appColors = [
    Color.fromRGBO(231, 129, 109, 1.0),
    Color.fromRGBO(99, 138, 223, 1.0),
    Color.fromRGBO(111, 194, 173, 1.0)
  ];
  var cardIndex = 0;
  ScrollController scrollController;
  var currentColor = Color.fromRGBO(231, 129, 109, 1.0);

  var cardsList = [
    CardItemModel("2X2", Icons.person, '/2x2'),
    CardItemModel("3X3", Icons.work, '/3x3'),
    CardItemModel("4X4", Icons.home, '/4x4'),
  ];

  AnimationController animationController;
  ColorTween colorTween;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: currentColor,
      appBar: new AppBar(
        title: new Text(
          "TODO",
          style: TextStyle(fontSize: 16.0),
        ),
        backgroundColor: currentColor,
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
        ],
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 600.0,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "${cardsList[position].route}");
                              },
                              child: Container(
                                width: 300.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 4.0),
                                            child: Text(
                                              "${cardsList[position].cardTitle}",
                                              style: TextStyle(fontSize: 28.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        onHorizontalDragEnd: (details) {
                          animationController = AnimationController(
                              vsync: this,
                              duration: Duration(milliseconds: 250));
                          curvedAnimation = CurvedAnimation(
                              parent: animationController,
                              curve: Curves.fastOutSlowIn);
                          animationController.addListener(() {
                            setState(() {
                              currentColor =
                                  colorTween.evaluate(curvedAnimation);
                            });
                          });

                          if (details.velocity.pixelsPerSecond.dx > 0) {
                            if (cardIndex > 0) {
                              cardIndex--;
                              colorTween = ColorTween(
                                  begin: currentColor,
                                  end: appColors[cardIndex]);
                            }
                          } else {
                            if (cardIndex < 2) {
                              cardIndex++;
                              colorTween = ColorTween(
                                  begin: currentColor,
                                  end: appColors[cardIndex]);
                            }
                          }
                          setState(() {
                            scrollController.animateTo((cardIndex) * 300.0,
                                duration: Duration(milliseconds: 100),
                                curve: Curves.fastOutSlowIn);
                          });

                          colorTween.animate(curvedAnimation);

                          animationController.forward();
                        },
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
