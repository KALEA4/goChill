import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:reprise_1/utils/environment.dart';


class ApiBase {
  static final httpClient = HttpClient();
  final logger = Logger('$ApiBase');

  Future<Map<String, dynamic>> callUrl(
      final String url,
      final HttpMethod httpMethod, {
        final String data = '',
        Map<String, String>? headers,
        Function(Map<String, dynamic>)? onError,
      }) async {
    final Uri uri = Uri.parse(Environment.BASE_URL + url);
    headers = headers ?? {};
    headers['Content-Type'] = 'application/json';
    http.Response response ;
    switch(httpMethod){
      case HttpMethod.get: {
        response = await http.get(uri, headers: headers);
      }
      break;
      case HttpMethod.post: {
        response = await http.post(uri, headers: headers, body: data);
      }
      break;
      case HttpMethod.put: {
        response = await http.put(uri, headers: headers, body: data);
      }
      break;
      case HttpMethod.delete: {
        response = await http.delete(uri, headers: headers);
      }
      break;
      default:{
        response = await http.get(uri, headers: headers);
      }
    }

    if (response.statusCode >= 400) {
      logger.severe('$httpMethod $uri error: ${response.body}');
      throw ApiHttpException(httpCode: response.statusCode, message: response.body);
    }
    if(jsonDecode(response.body)['error'] != null){
      print(response.body);
      onError!(jsonDecode(response.body));
      logger.severe('$httpMethod $uri error: ${response.body}');
      throw ApiHttpException(httpCode: response.statusCode, message: response.body);
    }
    logger.info('$httpMethod $uri response status: ${response.statusCode}');
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> get(
      final String uri, {
        final String data = '',
        final Map<String, dynamic> queryParams = const {},
        final Map<String, String> headers = const {}
      }) {
    if (queryParams.isEmpty) {
      return callUrl(uri, HttpMethod.get, data: data);
    } else {
      final queryString = queryParams.entries.map((e) => '${e.key}=${e.value}').join('&');
      return callUrl(uri.toString() + '?$queryString', HttpMethod.get, data: data);
    }
  }

  Future<Map<String, dynamic>>  post(String uri,
      {String data = '',
        final Map<String, String> headers = const {}, Null Function(dynamic response)? onError})  {
    return callUrl(uri = uri, HttpMethod.post, data: data, onError: onError);
  }

  Future<Map<String, dynamic>>  put(
      String uri, {
        String data = '',
        final Map<String, String> headers = const {},
      }) async {
    return callUrl(uri = uri, HttpMethod.put, data: data);
  }

  Future<Map<String, dynamic>>  delete(
      String uri, {
        String data = '',
        final Map<String, String> headers = const {},
      }) async {
    return callUrl(uri = uri, HttpMethod.delete, data: data);
  }
}

enum HttpMethod {
  get,
  post,
  put,
  delete,
}

class ApiHttpException implements Exception {
  final int httpCode;
  final String message;

  const ApiHttpException({required this.httpCode, required this.message});

  bool get isAuthException => httpCode == 403 || httpCode == 401;

  @override
  String toString() {
    return 'ApiHttpException{httpCode: $httpCode, message: $message}';
  }
}
