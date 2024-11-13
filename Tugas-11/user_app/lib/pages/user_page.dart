import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/pages/detail.dart';
import '../../controller/user_controller.dart';

class UserPage extends StatelessWidget {
  
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    userController.fetchUsers();
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          
          return const Center(child: CircularProgressIndicator());
        }

        
        if (userController.users.isEmpty) {
          return const Center(child: Text("No users found."));
        }

        return ListView.builder(
          itemCount: userController.users.length, 
          itemBuilder: (context, index) {
            final user = userController.users[index]; 

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailUserPage(userId: user.id),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('${user.firstname} ${user.lastname}'),
                  leading: Image.network(user.avatar),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
