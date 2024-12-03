import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  RxString greeting = ''.obs;

  @override
  void onInit() {
    super.onInit();
    updateGreeting();
  }

  void updateGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting.value = "Good Morning";
    } else if (hour < 18) {
      greeting.value = "Good Afternoon";
    } else {
      greeting.value = "Good Evening";
    }
  }
}
