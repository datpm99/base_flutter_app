import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';
// ignore: depend_on_referenced_packages
import 'package:http_parser/http_parser.dart';

import '/utils/app_utils.dart';
import 'storage_service.dart';

final _storage = Get.find<StorageService>();

class ApiService {
  late Dio dio;
  late VoidCallback logout;

  void interceptors() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        AppUtils.showLogDebug(
          '${response.requestOptions.method}: ${response.requestOptions.uri}'
          '\nPARAMS: ${response.requestOptions.data}'
          '\nHEADER: ${response.requestOptions.headers}',
        );
        printResponse(response);
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        AppUtils.showLogError(
          '${e.requestOptions.method}: ${e.requestOptions.uri}'
          '\nPARAMS: ${e.requestOptions.data}'
          '\nHEADER: ${e.requestOptions.headers}'
          '\nERROR: ${e.message}',
        );
        printResponse(e.response!);

        //Check code 403 => logout.
        if (e.response!.statusCode == 403) {
          logout();
          AppUtils.showError('msg_session_timeout'.tr);
        }
        return handler.next(e);
      },
    ));
  }

  void printResponse(Response response) {
    final prettyString =
        const JsonEncoder.withIndent('  ').convert(response.data);
    AppUtils.showLogInfo(prettyString);
  }

  Future<void> init(String domain, VoidCallback funLogout) async {
    logout = funLogout;
    dio = Dio(
      BaseOptions(
        baseUrl: domain,
        headers: {'content-type': 'application/json'},
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
      ),
    );
    interceptors();
  }

  void settingHeaderRequest(String token) {
    dio.options.headers = {};
    if (token.isNotEmpty) {
      dio.options.headers['Authorization'] = 'Bearer $token';
    }

    dio.options.responseType = ResponseType.json;
    dio.options.contentType = 'application/json';

    //Check lang code.
    String localeCode = _storage.language.split('_')[0];
    dio.options.headers['Accept-Language'] = localeCode;
    dio.options.headers['x-api-key'] = 'reqres-free-v1';
  }

  Future<Response?> get(
      {required String url, String token = '', var data}) async {
    try {
      settingHeaderRequest(token);
      if (data != null) return await dio.get(url, queryParameters: data);
      return await dio.get(url);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> post(
      {required String url, String token = '', required String data}) async {
    try {
      settingHeaderRequest(token);
      return await dio.post(url, data: data);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> put(
      {required String url, String token = '', required String data}) async {
    try {
      settingHeaderRequest(token);
      return await dio.put(url, data: data);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> delete(
      {required String url, String token = '', var data}) async {
    try {
      settingHeaderRequest(token);
      return await dio.delete(url, data: data);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> getFile(String url, String token, {var data}) async {
    try {
      settingHeaderRequest(token);
      dio.options.responseType = ResponseType.bytes;

      if (data != null) return await dio.get(url, queryParameters: data);
      return await dio.get(url);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> uploadFile(String url, String token, File file) async {
    try {
      settingHeaderRequest(token);

      final parFile = await MultipartFile.fromFile(
        file.path,
        filename: file.path.split('/').last,
        contentType: MediaType('image', 'png'),
      );
      FormData formData = FormData.fromMap({
        "file": parFile,
        "fileType": 'FILE_IMAGE_SIGNATURE',
      });
      return await dio.post(url, data: formData);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> uploadMultipleFile(
      String url, String token, List<File> files) async {
    try {
      settingHeaderRequest(token);
      dio.options.contentType = 'multipart/form-data';

      final formData = FormData();

      for (File file in files) {
        final itemFile = await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        );
        formData.files.add(MapEntry("files", itemFile));
      }

      formData.fields.add(const MapEntry("fileType", 'FILE_EXTRA'));

      return await dio.post(url, data: formData);
    } on DioException catch (e) {
      if (e.response != null) return e.response;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
