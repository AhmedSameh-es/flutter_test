import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_task/models/order.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../utils/json_parser.dart';

class OrderController extends GetxController {
  var orders = [].obs; // List of orders as an observable

  @override
  void onInit() {
    super.onInit();
    loadOrders();
  }

  void loadOrders() async {
    try {
      final String jsonString =
          await rootBundle.loadString('assets/orders.json');
      final List<dynamic> data = json.decode(jsonString);

      if (data.isNotEmpty) {
        orders.value = data; // Assign data to the observable list
        print('Orders loaded successfully: ${orders.length}');
      } else {
        print('Orders JSON is empty.');
      }
    } catch (e) {
      print('Error loading orders: $e');
    }
  }

  int get totalOrders => orders.length;

  double get averagePrice {
    if (orders.isEmpty) return 0.0;
    double totalPrice = orders.fold(0.0, (sum, order) {
      final priceString = order['price'] as String;
      final price =
          double.tryParse(priceString.replaceAll(RegExp(r'[^0-9.]'), '')) ??
              0.0;
      return sum + price;
    });
    return totalPrice / orders.length;
  }

  int get numberOfReturns =>
      orders.where((order) => order['status'] == 'RETURNED').length;

  List<OrderData> get ordersByDate {
    final Map<String, int> groupedOrders = {};

    for (var order in orders) {
      final DateTime date = DateTime.parse(order['registered']);
      final String formattedDate = DateFormat('yyyy-MM-dd').format(date);
      groupedOrders[formattedDate] = (groupedOrders[formattedDate] ?? 0) + 1;
    }

    // Convert to List<OrderData>
    return groupedOrders.entries
        .map((e) => OrderData(DateTime.parse(e.key), e.value))
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date)); // Sort by date
  }
}
