import '../language_screen/widgets/listchineses_item_widget.dart';
import '../language_screen/widgets/listenglishuk_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_title.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft18(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Language")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 16, top: 21, right: 16, bottom: 21),
                              decoration: AppDecoration.outlineIndigo50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("Suggested Languages",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold12Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06)))),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return Padding(
                                                  padding: getPadding(
                                                      top: 7.0, bottom: 7.0),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          295),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigo50)));
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return ListenglishukItemWidget();
                                            }))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 24, bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineIndigo50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("Other Languages",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold12Bluegray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06)))),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return Padding(
                                                  padding: getPadding(
                                                      top: 8.0, bottom: 8.0),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          295),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigo50)));
                                            },
                                            itemCount: 6,
                                            itemBuilder: (context, index) {
                                              return ListchinesesItemWidget();
                                            }))
                                  ])))
                    ]))));
  }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}
