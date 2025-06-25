import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:example/models/user_model.dart';
import 'package:example/services/api/test_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController with LoadMoreMixin {
  final _service = TestService();
  List<User> lstUser = [];

  @override
  Future<void> getData() async {
    var data = {
      "page": page,
      "per_page": 10,
    };
    final result = await _service.getUsers(data);
    await 1.delay();
    isLoading = false;

    if (result != null) {
      if (page == result.totalPages) isLoadMore = false;
      lstUser.addAll(result.data);
      update();
      return;
    }

    debugPrint('error ---> getListUser');
    update();
  }

  @override
  void updateData() {
    update();
  }

  Future<void> onRefreshData() async {
    lstUser.clear();
    refreshData();
  }

  @override
  void onReady() {
    super.onReady();
    loadMoreData();
    getData();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
