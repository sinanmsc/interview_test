import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_test/provider/token/token_provider.dart';

class AuthenticationService {
  static Dio dio =
      Dio(BaseOptions(baseUrl: 'https://interview.sanjaysanthosh.me'));
  static Future<String?> signUp(
      String email, String password, String name) async {
    try {
      Response response = await dio.post(
        '/api/register',
        data: json.encode(
          {
            "name": name,
            "email": email,
            "password": password,
          },
        ),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        // log(response.data.toString());
        return response.data['token'];
      }
    } on DioException catch (e) {
      log('$e');
    }
    return null;
  }

  static Future<String?> login(
      {required String email, required String password}) async {
    try {
      Response response = await dio.post(
        "/api/login",
        data: json.encode(
          {
            "email": email,
            "password": password,
          },
        ),
      );
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        return response.data["token"];
      }
    } on DioException catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<bool> delete(WidgetRef ref) async {
    try {
      final token = ref.watch(tokenProvider);
      log('lohin$token');
      Options options = Options(headers: {"x-access-token": token});
      Response response =
          await dio.delete('/api/delete-user', options: options);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioException catch (e) {
      log('$e');
    }
    return false;
  }

  static Future<bool> updateUser(
      String name, String password, WidgetRef ref) async {
    try {
      final token = ref.watch(tokenProvider);
      log('token : $token');
      Options options = Options(headers: {"x-access-token": token});
      Response response = await dio.put(
        '/api/update-user',
        data: json.encode(
          {
            "name": name,
            "password": password,
          },
        ),
        options: options,
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      log('$e');
    }
    return false;
  }
}
