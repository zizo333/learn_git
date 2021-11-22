// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:getx_project/core/enums/enums.dart';
import 'package:http/http.dart' as http;

import 'api_constants.dart';
import 'app_error.dart';

class ApiClient {
  late final Duration _timeOutDuration;
  ApiClient() {
    _timeOutDuration = const Duration(seconds: 20);
  }
  //TODO: get
  Future<dynamic> get(String path) async {
    final uri = Uri.https(ApiConstants.baseUrl, path);
    try {
      final response = await http.get(uri).timeout(_timeOutDuration);
      return _handleResponse(response);
    } on SocketException catch (_) {
      throw AppError(type: AppErrorType.noInternet);
    } on TimeoutException catch (_) {
      throw AppError(type: AppErrorType.connectingTimeOut);
    }
  }

  //TODO: post
  Future<dynamic> post({
    required String path,
    required Map<String, dynamic> body,
  }) async {
    final uri = Uri.https(ApiConstants.baseUrl, path, body);
    try {
      final response = await http.post(uri).timeout(_timeOutDuration);
      return _handleResponse(response);
    } on SocketException catch (_) {
      throw AppError(type: AppErrorType.noInternet);
    } on TimeoutException catch (_) {
      throw AppError(type: AppErrorType.connectingTimeOut);
    }
  }

  //TODO: handle response
  dynamic _handleResponse(http.Response response) {
    print(response.statusCode);
    switch (response.statusCode) {
      case 200:
      case 201:
        return json.decode(response.body);
      default:
        throw AppError(type: AppErrorType.somthinWrong);
    }
  }
}
