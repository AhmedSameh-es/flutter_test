import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/order_controller.dart';

class MetricsScreen extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
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
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40), // Space for status bar
                // Back Button
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Get.back(),
                ),
                SizedBox(height: 8),
                // Screen Title
                Text(
                  'Metrics Overview',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Obx(() {
                  if (orderController.orders.isEmpty) {
                    return Center(child: CircularProgressIndicator());
                  }

                  return Column(
                    children: [
                      Card(
                        color: Colors.white.withOpacity(0.9),
                        child: ListTile(
                          title: Text('Total Orders'),
                          trailing: Text(
                            '${orderController.totalOrders}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Card(
                        color: Colors.white.withOpacity(0.9),
                        child: ListTile(
                          title: Text('Average Price'),
                          trailing: Text(
                            '\$${orderController.averagePrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Card(
                        color: Colors.white.withOpacity(0.9),
                        child: ListTile(
                          title: Text('Number of Returns'),
                          trailing: Text(
                            '${orderController.numberOfReturns}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
