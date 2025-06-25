import 'package:base_flutter_app/themes/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListEmptyWidget extends StatelessWidget {
  const ListEmptyWidget({
    super.key,
    this.showDivider = true,
    this.text = 'list_empty',
  });

  final bool showDivider;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: showDivider,
          child: const Divider(color: Color(0xffD4D4DB), height: 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Text(text.tr, style: AppTypography.headlineXSMedium()),
        ),
      ],
    );
  }
}
