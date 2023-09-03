import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewjobsOneItemWidget extends StatelessWidget {
  ChipviewjobsOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        right: 16,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Part Time",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCheckmark18x18,
        height: getSize(
          18,
        ),
        width: getSize(
          18,
        ),
        margin: getMargin(
          right: 4,
        ),
      ),
      selected: false,
      backgroundColor: ColorConstant.deepOrangeA200,
      selectedColor: ColorConstant.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
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
