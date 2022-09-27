import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return request.send().then((value) {
      if (kDebugMode) {
        print("request ${request.url} ==> ${value.statusCode}");
      }
      return value;
    }).catchError((onError) {
      if (kDebugMode) {
        print("error $onError");
      }
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      if (kDebugMode) {
        print("response ${value.body}");
      }
      return value;
    }).catchError((onError) {
      if (kDebugMode) {
        print("error $onError");
      }
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      if (kDebugMode) {
        print("response ${value.body}");
      }
      return value;
    }).catchError((onError) {
      if (kDebugMode) {
        print("error $onError");
      }
    });
  }
}
