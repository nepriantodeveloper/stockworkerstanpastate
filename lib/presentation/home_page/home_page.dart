import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listuser_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: CustomImageView(
                    imagePath: ImageConstant.imgImage50x501,
                    height: getSize(50),
                    width: getSize(50),
                    radius: BorderRadius.circular(getHorizontalSize(25)),
                    margin: getMargin(left: 24)),
                title: Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Hi, Welcome Back! 👋",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 9, right: 33),
                                  child: Text("Find your dream job",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPlusJakartaSansMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06)))))
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13),
                      onTap: () {
                        onTapLightbulb(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowsearch(context);
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 30, right: 24),
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin:
                                                getMargin(top: 2, bottom: 2)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("Search...",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        SizedBox(
                                            height: getVerticalSize(22),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.indigo50,
                                                indent: getHorizontalSize(2),
                                                endIndent:
                                                    getHorizontalSize(2))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSettingsGray900,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(
                                                left: 7, top: 2, bottom: 2))
                                      ])))),
                      Padding(
                          padding: getPadding(left: 24, top: 25),
                          child: Text("Recommendation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansSemiBold18
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.09)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(193),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 17),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListuserItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 24, top: 22),
                          child: Text("Recent Jobs",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.08)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 16, right: 24),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListgroupItemWidget(
                                        onTapColumngroup: () {
                                      onTapColumngroup(context);
                                    });
                                  })))
                    ]))));
  }

  onTapColumngroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobDetailsScreen);
  }

  onTapRowsearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  onTapLightbulb(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsGeneralScreen);
  }
}
