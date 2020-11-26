import 'package:cute_kitten/views/cat_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: CatGrid(),
    );
  }
}
