import 'package:flutter/material.dart';
import 'package:pos_app/authentication/login.dart';
import 'package:pos_app/test/drawer.dart';

import 'test/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  CardWidget()
    );
  }
}
