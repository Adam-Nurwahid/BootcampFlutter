import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/user_controller.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX User List',
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (userController.userList.isEmpty) {
          return const Center(child: Text('No Users Found'));
        } else {
          return ListView.builder(
            itemCount: userController.userList.length,
            itemBuilder: (context, index) {
              final user = userController.userList[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(user.name[0].toUpperCase()), // Placeholder Avatar
                ),
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            },
          );
        }
      }),
    );
  }
}
