import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/model/user_model.dart';
import 'package:flutter_3_random_user_with_provider/provider/random_user_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModel selectedUser = context.read<RandomUserProvider>().selectedUser!;

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedUser.name),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: Colors.green,
            ),
            title: Text(selectedUser.phone),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
