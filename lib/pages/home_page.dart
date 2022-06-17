import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/provider/random_user_provider.dart';

import '../model/user_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<UserModel> userModel = [];

  @override
  Widget build(BuildContext context) {
    var provider = context.read<RandomUserProvider>();

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
