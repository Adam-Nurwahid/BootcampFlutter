import 'package:api/user_model.dart';
import 'package:dio/dio.dart';



class UserService {
  Dio dio = Dio();
  static const url = ' https://reqres.in/api/users/';

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users =
        List.from(data.map((user) => UserModel.fromJson(user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
