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
      body: FutureBuilder(
        future: provider.loadRandomUser(),
        builder:
            (BuildContext context, AsyncSnapshot<List<UserModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var userList = snapshot.data;

            return ListView.builder(
              itemCount: userList?.length,
              itemBuilder: (BuildContext context, int index) {
                var user = userList![index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.pictureUrl),
                  ),
                  title: Text(user.name),
                  subtitle: Text(user.phone),
                  onTap: () {
                    provider.selectedUser = user;
                    Navigator.pushNamed(context, '/detail');
                  },
                );
              },
            );
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
