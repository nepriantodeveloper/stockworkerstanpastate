import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore: must_be_immutable
class Listdescription1ItemWidget extends StatelessWidget {
  Listdescription1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: getHorizontalSize(
            101,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 16,
            top: 12,
            right: 16,
            bottom: 12,
          ),
          decoration: AppDecoration.txtFillGray100.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder22,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
              letterSpacing: getHorizontalSize(
                0.06,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
