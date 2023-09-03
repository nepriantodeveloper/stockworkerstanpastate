import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore: must_be_immutable
class ListchinesesItemWidget extends StatelessWidget {
  ListchinesesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      "",
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: AppStyle.txtPlusJakartaSansSemiBold16Gray900.copyWith(
        letterSpacing: getHorizontalSize(
          0.08,
        ),
      ),
    );
  }
}
