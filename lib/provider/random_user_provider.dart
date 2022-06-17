import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/model/user_model.dart';

class RandomUserProvider extends ChangeNotifier {
  UserModel? selectedUser;

  Future<List<UserModel>> loadRandomUser() async {
    List<UserModel> users = [];

    var result = await Dio().get('https://randomuser.me/api/?results=100');

    if (result.statusCode == 200) {
      List<dynamic> randomUserList = result.data['results'];

      for (Map<String, dynamic> randomUser in randomUserList) {
        users.add(UserModel.parseMap(randomUser));
      }
    }

    return users;
  }
}
