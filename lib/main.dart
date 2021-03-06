import 'package:flutter/material.dart';
import 'package:flutter_painting_learning/animation/pic_man_page.dart';
import 'package:flutter_painting_learning/animation/pic_man_page2.dart';
import 'package:flutter_painting_learning/canvas_basic_operation/canvas_basic_operation.dart';
import 'package:flutter_painting_learning/canvas_color_operation/color_basic_operation1.dart';
import 'package:flutter_painting_learning/gesture/handle_page.dart';
import 'package:flutter_painting_learning/gesture/ruler_page.dart';
import 'package:flutter_painting_learning/path_basic_operation/path_basic_operation.dart';
import 'package:flutter_painting_learning/path_bezier/path_bezier.dart';
import 'package:flutter_painting_learning/path_curve_line/path_curve_line.dart';

import 'canvas_color_operation/color_basic_operation.dart';

const String canvas_basic_operation = "canvas_basic_operation";
const String path_basic_operation = "path_basic_operation";
const String color_basic_operation = "color_basic_operation";
const String color_basic_operation1 = "color_basic_operation1";
const String pic_main = "pic_main";
const String pic_main2 = "pic_main2";
const String handle = "handle";
const String ruler = "ruler";
const String path_curve_line = "path_curve_line";
const String path_bezier = "path_bezier";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        canvas_basic_operation: (context) => CanvasBasicOperation(),
        path_basic_operation: (context) => PathBasicOperation(),
        color_basic_operation: (context) => ColorBasicOperation(),
        color_basic_operation1: (context) => ColorBasicOperation1(),
        pic_main: (context) => PicManPage(),
        pic_main2: (context) => PicManPage2(),
        handle: (context) => HandlePage(),
        ruler: (context) => RulerPage(),
        path_curve_line: (context) => PathCurveLine(),
        path_bezier: (context) => PathBezier()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, canvas_basic_operation);
                  },
                  child: Text(canvas_basic_operation)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, path_basic_operation);
                  },
                  child: Text(path_basic_operation)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, color_basic_operation);
                  },
                  child: Text(color_basic_operation)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, color_basic_operation1);
                  },
                  child: Text(color_basic_operation1)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, pic_main);
                  },
                  child: Text(pic_main)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, pic_main2);
                  },
                  child: Text(pic_main2)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, handle);
                  },
                  child: Text(handle)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ruler);
                  },
                  child: Text(ruler)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, path_curve_line);
                  },
                  child: Text(path_curve_line)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, path_bezier);
                  },
                  child: Text(path_bezier)),
            ],
          ),
        ),
      ),
    );
  }
}
