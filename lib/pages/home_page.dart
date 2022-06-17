import 'package:flutter/material.dart';

import '../model/user_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<UserModel> userModel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: userModel.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('...'),
          );
        },
      ),
    );
  }
}
