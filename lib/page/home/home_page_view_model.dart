import 'dart:convert';

import 'package:flutter/material.dart';

import '../../api-client/api_client.dart';

class HomeViewModel extends ChangeNotifier {
  late List<dynamic> cars;
  Map<String, String> columnNames = {'id': 'Id', 'model': 'Model', 'year': 'Year', 'owner': 'Owner'};

  @protected
  Future<void> init() async {
    await loadData();
  }

  Future<void> loadData() async {
    await CarWashApi.carEndpointApi.carsAllGetWithHttpInfo().then((response) {
      cars = json.decode(response.body);
    });
  }
}
