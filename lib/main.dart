import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Futura"),
      home: HomePage(),
    );
  }
}
