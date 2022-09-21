import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sanberappflutter/Tugas/Tugas15/config/base_url.dart';

class DioHttp {
  static Map<String, dynamic> headers = {
    "Accept": "application/json",
    "Content-Type": 'application/json',
  };

  static Dio request = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
    ),
  );
}
