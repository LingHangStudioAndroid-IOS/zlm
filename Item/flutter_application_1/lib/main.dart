import 'package:flutter/material.dart';
import 'package:flutter_application_1/transit_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '张子枫',
      home: TransitPage(),
    );
  }
}