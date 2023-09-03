import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewskillsOneItemWidget extends StatelessWidget {
  ChipviewskillsOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 16,
        right: 16,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Design & Creative",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: false,
      backgroundColor: ColorConstant.whiteA700,
      selectedColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1,
          ),
        ),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22,
          ),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
