import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_icon_button.dart';

class JobTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 13, right: 24, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(top: 47),
                          child: Text("Choose Job Type",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Container(
                          width: getHorizontalSize(209),
                          margin: getMargin(top: 7),
                          child: Text(
                              "Are you looking for a new job or\nlooking for new employee",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray400
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      Padding(
                          padding: getPadding(top: 38, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Container(
                                        margin: getMargin(right: 7),
                                        padding: getPadding(
                                            left: 18,
                                            top: 24,
                                            right: 18,
                                            bottom: 24),
                                        decoration: AppDecoration.outlineGray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 64,
                                                  width: 64,
                                                  variant: IconButtonVariant
                                                      .FillGray90065,
                                                  shape: IconButtonShape
                                                      .CircleBorder32,
                                                  padding: IconButtonPadding
                                                      .PaddingAll16,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIcon)),
                                              Padding(
                                                  padding: getPadding(top: 29),
                                                  child: Text("Find a job",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansSemiBold16Gray900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.08)))),
                                              Container(
                                                  width: getHorizontalSize(120),
                                                  margin: getMargin(
                                                      top: 9, bottom: 1),
                                                  child: Text(
                                                      "It’s easy to find your dream jobs here with us.",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansMedium12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.06))))
                                            ]))),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(left: 7),
                                        padding: getPadding(
                                            left: 14,
                                            top: 24,
                                            right: 14,
                                            bottom: 24),
                                        decoration: AppDecoration
                                            .outlineGray70014
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 64,
                                                  width: 64,
                                                  variant: IconButtonVariant
                                                      .FillOrange50065,
                                                  shape: IconButtonShape
                                                      .CircleBorder32,
                                                  padding: IconButtonPadding
                                                      .PaddingAll16,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUser)),
                                              Padding(
                                                  padding: getPadding(top: 29),
                                                  child: Text("Find a employee",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansSemiBold16Gray900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.08)))),
                                              Container(
                                                  width: getHorizontalSize(109),
                                                  margin: getMargin(
                                                      top: 9, bottom: 1),
                                                  child: Text(
                                                      "It’s easy to find eployees here with us.",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPlusJakartaSansMedium12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.06))))
                                            ])))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 55),
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapContinue(context);
                })));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.speciallizationScreen);
  }
}
