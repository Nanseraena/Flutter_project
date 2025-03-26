import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoggedIn = false.obs;

  var username = ''.obs;
  var password = ''.obs;

  // Method to simulate login
  Future<void> login(String username, String password) async {
    if (username == 'user' && password == 'password') {
      isLoggedIn.value = true; // Set logged-in status
      this.username.value = username; // Save username
      this.password.value = password; // Save password 
     
    } else {
      isLoggedIn.value = false; // Invalid login attempt
    }
  }

  // Method to simulate logout
  void logout() {
    isLoggedIn.value = false; // Reset login state
    username.value = ''; 
    password.value = ''; 
  }
}
