import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundWidget(width: width),
          ShowWidget(width: width),
          LogoWidget(width: width, height: height),
          Positioned(
            right: width * 0.15,
            bottom: height * 0.18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                //not yet describe
              ],
            ),
          ),
          Positioned(
              height: kToolbarHeight,
              width: width,
              child: AppBar(
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/nike_logo.png",
                              width: 80,
                              color: Colors.white,
                            ),
                            Text("Home"),
                            Text("Men Outlet"),
                            Text("Women Store"),
                            Text("Sports"),
                            Text("Watches"),
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: width * 0.06,
      top: height * 0.18,
      child: Image.asset(
        "assets/images/nike_logo_grey.png",
        height: 200,
      ),
    );
  }
}

class ShowWidget extends StatelessWidget {
  const ShowWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: width * 0.15,
      child: Image.asset(
        "assets/images/shoe.png",
        fit: BoxFit.cover,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                "assets/images/background.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
              Container(
                color: Color.fromRGBO(0, 105, 233, 0.8),
              )
            ],
          ),
        ),
        Container(
          width: width * 0.3,
          color: Colors.white,
        )
      ],
    );
  }
}
