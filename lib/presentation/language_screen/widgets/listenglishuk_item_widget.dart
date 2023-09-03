import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class ListenglishukItemWidget extends StatelessWidget {
  ListenglishukItemWidget();

  bool isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return CustomCheckbox(
      width: getHorizontalSize(
        295,
      ),
      text: "English (UK)",
      value: isCheckbox,
      fontStyle: CheckboxFontStyle.PlusJakartaSansSemiBold16,
      isRightCheck: true,
      onChange: (value) {
        isCheckbox = value;
      },
    );
  }
}
