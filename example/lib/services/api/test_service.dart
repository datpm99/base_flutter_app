import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:example/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'end_point.dart';

class TestService {
  final _service = Get.find<ApiService>();

  Future<UserModel?> getUsers(var data) async {
    try {
      var response = await _service.get(
        url: EndPoint.getUsers,
        data: data,
      );

      if (response != null) {
        return UserModel.fromJson(response.data);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
