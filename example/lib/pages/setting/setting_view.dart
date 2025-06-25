import 'package:base_flutter_app/base_flutter_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'setting_controller.dart';

class SettingView extends StatelessWidget with AdaptivePageMixin {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: SafeArea(child: adaptiveBody(context)),
    );
  }

  @override
  Widget mobileLandscapeBody(BuildContext context, Size size) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text('Horizontal'),
      ],
    );
  }

  @override
  Widget mobilePortraitBody(BuildContext context, Size size) {
    return GetBuilder<SettingController>(
      builder: (c) {
        return ListViewWidget(
          isLoading: c.isLoading,
          itemCount: c.lstUser.length,
          scrollController: c.scrollController,
          onRefresh: c.onRefreshData,
          showIndicatorLoadMore: (!c.isLoadData),
          child: (ctx, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.network(
                      c.lstUser[index].avatar,
                      width: 48,
                      height: 48,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          '${c.lstUser[index].firstName} ${c.lstUser[index].lastName}'),
                      Text(c.lstUser[index].email),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget tabletLandscapeBody(BuildContext context, Size size) {
    // TODO: implement tabletLandscapeBody
    throw UnimplementedError();
  }

  @override
  Widget tabletPortraitBody(BuildContext context, Size size) {
    // TODO: implement tabletPortraitBody
    throw UnimplementedError();
  }
}

class Setting2View extends StatelessWidget {
  const Setting2View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (c) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Setting'),
          ),
          body: SafeArea(
            child: ListViewWidget(
              isLoading: c.isLoading,
              itemCount: c.lstUser.length,
              scrollController: c.scrollController,
              onRefresh: c.onRefreshData,
              showIndicatorLoadMore: (!c.isLoadData),
              child: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.network(
                          c.lstUser[index].avatar,
                          width: 48,
                          height: 48,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '${c.lstUser[index].firstName} ${c.lstUser[index].lastName}'),
                          Text(c.lstUser[index].email),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
