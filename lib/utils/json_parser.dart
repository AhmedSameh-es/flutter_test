import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class JsonParser {
  static Future<List<dynamic>> loadOrders() async {
    // Load the JSON file as a string
    final String jsonString = await rootBundle.loadString('assets/orders.json');
    // Parse the string into a List of dynamic objects
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData;
  }
}
