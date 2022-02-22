import 'dart:convert';
import 'package:flutter/services.dart';
import 'model/api_config.dart';

class ConfigHandler {
  static Map<String, dynamic>? _apiData;
  static ApiConfig? loadAPIConfigs() {
    return ApiConfig.fromJson(_apiData!);
  }

  static Future<void> init() async {
    var apiData = await rootBundle.loadString('assets/config/api_config.json');
    _apiData = json.decode(apiData);
  }
}
