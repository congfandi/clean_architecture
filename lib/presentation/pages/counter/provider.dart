import 'package:clean_architecture/config/networking/api_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'state.dart';

class CounterProvider extends ChangeNotifier {
  final state = CounterState();

  ApiClient apiClient = ApiClient();

  Future<http.Response> checkGoogle() async {
    var response = await apiClient.get(Uri.parse("https://google.com"));
    return response;
  }

  void increment() {
    state.count++;
    notifyListeners();
  }

  void decrement() {
    state.count--;
    notifyListeners();
  }

  void reset() {
    state.count = 0;
    notifyListeners();
  }
}
