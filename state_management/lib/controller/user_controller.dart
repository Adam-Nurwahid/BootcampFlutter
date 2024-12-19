import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/model/user_model.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List;
        userList.value = data.map((json) => User.fromJson(json)).toList();
      } else {
        Get.snackbar("Error", "Failed to load users");
      }
    } finally {
      isLoading(false);
    }
  }
}
