class UserModel {
  String name = "";
  String phone = "";
  String pictureUrl = "";

  UserModel.parseMap(Map<String, dynamic> randomUser) {
    name = randomUser['name']['first'];
    pictureUrl = randomUser['picture']['large'];
    phone = randomUser['phone'];
  }
}
