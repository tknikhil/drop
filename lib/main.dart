import 'package:drop_down_flutter/pages/drop_down/drop_down_home.dart';
import 'package:drop_down_flutter/pages/mysql/mysql_display.dart';
import 'package:flutter/material.dart';
import 'pages/drop_down/drop_down.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DropDownHome(),
      // home: MysqlDisplay(),
      home: DropDownCaller(),
    );
  }
}


