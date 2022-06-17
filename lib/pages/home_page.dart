import 'package:flutter/material.dart';
import '../model/user_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
