import 'package:flutter/material.dart';
import 'package:responsive_mediaquery/Orientation_widget_method2.dart';
import 'package:responsive_mediaquery/desktop_or_mobile.dart';
import 'package:responsive_mediaquery/orientation_method1.dart';
import 'package:responsive_mediaquery/width_or_height.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OrientationWidgetMethod2(),
    );
  }
}

