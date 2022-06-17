import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/model/user_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: Colors.green,
            ),
            title: Text(''),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
