import 'package:expanproject/menu_item.dart';
import 'package:expanproject/my_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor: Colors.black,
      
    ),
      debugShowCheckedModeBanner: false,
      home: MyChart()
    );
  }
}
 
