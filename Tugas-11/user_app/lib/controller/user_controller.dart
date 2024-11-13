import 'package:get/get.dart';
import '../../model/user_model.dart';
import '../services/services.dart';

class UserController extends GetxController {
  var isLoading = false.obs;
  var users = <UserModel>[].obs;

  final UserService userService = UserService();

  // Fetch all users
  Future<void> fetchUsers() async {
    try {
      isLoading(true);
      final userList = await userService.fetchUser();
      users.value = userList;
    } catch (e) {
      Get.snackbar("Error", "Failed to fetch users");
    } finally {
      isLoading(false);
    }
  }

}

