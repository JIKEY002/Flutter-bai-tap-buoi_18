import 'package:bai_tap/component_1.dart';
import 'package:bai_tap/component_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: Layout2WidgetExplore())),
    ),
  );
}
