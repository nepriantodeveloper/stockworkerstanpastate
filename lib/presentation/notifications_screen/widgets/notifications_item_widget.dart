import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_switch.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular16.copyWith(
            letterSpacing: getHorizontalSize(
              0.12,
            ),
          ),
        ),
        CustomSwitch(
          value: isSelectedSwitch,
          onChanged: (value) {
            isSelectedSwitch = value;
          },
        ),
      ],
    );
  }
}
