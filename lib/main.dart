import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/pages/detail_page.dart';
import 'package:flutter_3_random_user_with_provider/pages/home_page.dart';
import 'package:flutter_3_random_user_with_provider/provider/random_user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter - HTTP with Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
