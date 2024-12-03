import 'package:flutter/material.dart';
import 'package:flutter_task/models/order.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controllers/order_controller.dart';

class GraphScreen extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Obx(() {
            if (orderController.orders.isEmpty) {
              return Center(child: CircularProgressIndicator());
            }

            final data = orderController.ordersByDate;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40), // Space for the status bar
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Get.back(),
                ),
                SizedBox(height: 8),
                Text(
                  'Orders Over Time',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: SfCartesianChart(
                    primaryXAxis: DateTimeAxis(
                      intervalType: DateTimeIntervalType.days,
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                      axisLine: AxisLine(width: 0),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    primaryYAxis: NumericAxis(
                      axisLine: AxisLine(width: 0),
                      majorTickLines: MajorTickLines(size: 0),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <ChartSeries>[
                      LineSeries<OrderData, DateTime>(
                        dataSource: data,
                        xValueMapper: (OrderData data, _) => data.date,
                        yValueMapper: (OrderData data, _) => data.orderCount,
                        color: Colors.white,
                        dataLabelSettings: DataLabelSettings(
                          isVisible: true,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
