import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3_random_user_with_provider/model/user_model.dart';

class RandomUserProvider {
  UserModel? selectedUser;

  Future<List<UserModel>> loadRandomUser() async {
    List<UserModel> users = [];

    return users;
  }
}
