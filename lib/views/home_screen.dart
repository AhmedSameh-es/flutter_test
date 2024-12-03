import 'package:flutter/material.dart';
import 'package:flutter_task/utils/widgets/custom_button.dart';
import 'package:flutter_task/views/graph_screen.dart';
import 'package:flutter_task/views/metrics_screen.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          // Apply the gradient background
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4BACF0), // #4BACF0
                Color(0xFF5D79E1), // #5D79E1
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70), // Add spacing from the top
                Obx(() {
                  return Text(
                    '${homeController.greeting.value}, Ahmed 👋',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // White text for contrast
                    ),
                  );
                }),
                SizedBox(height: 8),
                Text(
                  'What are you looking for today?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70, // Slightly dimmed white
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                  padding: EdgeInsets.all(10),
                  height: 81,
                  width: 361,
                  title: " View Orders Metrics",
                  subtitle: "Check numeric metrics about your orders ",
                  titleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  onPressed: () {
                    Get.to(MetricsScreen());
                  },
                  leading: Icon(
                    Icons.online_prediction_sharp,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF192533),
                  borderRadius: 15,
                  borderSide: BorderSide(color: Color(0xFF454862), width: 0.0),
                ),

                const SizedBox(height: 15),
                CustomButton(
                  padding: EdgeInsets.all(10),
                  height: 81,
                  width: 361,
                  title: " View Orders Graph",
                  subtitle: "Check detailed graph about your orders ",
                  titleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  onPressed: () {
                    Get.to(GraphScreen());
                  },
                  leading: Icon(
                    Icons.query_stats,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF192533),
                  borderRadius: 15,
                  borderSide: BorderSide(color: Color(0xFF454862), width: 1.0),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/imgs/flapkap_icon.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
