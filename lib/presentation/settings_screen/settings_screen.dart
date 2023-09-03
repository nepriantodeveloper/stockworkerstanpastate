import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/presentation/home_page/home_page.dart';
import 'package:stockworkersmobile/presentation/message_page/message_page.dart';
import 'package:stockworkersmobile/presentation/profile_page/profile_page.dart';
import 'package:stockworkersmobile/presentation/saved_page/saved_page.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_title.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkersmobile/widgets/custom_bottom_bar.dart';
import 'package:stockworkersmobile/widgets/custom_checkbox.dart';
import 'package:stockworkersmobile/presentation/logout_popup_dialog/logout_popup_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  bool isCheckbox = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(38),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, bottom: 1),
                    onTap: () {
                      onTapArrowleft12(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Settings")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 41, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: getPadding(top: 13, bottom: 13),
                                  decoration: AppDecoration.fillGray900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            height: getSize(64),
                                            width: getSize(64),
                                            margin:
                                                getMargin(top: 3, bottom: 2),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: getSize(64),
                                                          width: getSize(64),
                                                          child: CircularProgressIndicator(
                                                              value: 0.5,
                                                              strokeWidth:
                                                                  getHorizontalSize(
                                                                      4)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("65%",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold16Gray50
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.08))))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Profile Completeness",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.08))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          199),
                                                      margin: getMargin(top: 6),
                                                      child: Text(
                                                          "Quality profiles are 5 times more likely to get hired by clients.",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 32),
                                      child: Text("Account",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapAccount(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser2,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(top: 3)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 5),
                                                child: Text("Personal Info",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 3))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              GestureDetector(
                                  onTap: () {
                                    onTapPrivacy(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser3,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 3, bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 7),
                                                child: Text("Experience",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 4))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 26),
                                      child: Text("General",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapNotification(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgNotification,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(top: 2)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 2),
                                                child: Text("Notification",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium16
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.12)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 2))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              GestureDetector(
                                  onTap: () {
                                    onTapLanguage(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgGlobe,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 2, bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 7),
                                                child: Text("Language",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 4))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomCheckbox(
                                            text: "Security",
                                            value: isCheckbox,
                                            fontStyle: CheckboxFontStyle
                                                .PlusJakartaSansSemiBold16,
                                            onChange: (value) {
                                              isCheckbox = value;
                                            }),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 26),
                                      child: Text("About",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold12Bluegray400
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.06))))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowlocation(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgLocation24x24,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 1)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 4),
                                                child: Text(
                                                    "Legal and Policies",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold16Gray900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.08)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(bottom: 1))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgQuestion,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 4),
                                            child: Text("Help & Feedback",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50,
                                      indent: getHorizontalSize(36))),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgWarning,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, top: 2),
                                            child: Text("About Us",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16Gray900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24),
                                            width: getSize(24))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtLargelabelmediu(context);
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 28),
                                          child: Text("Logout",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPlusJakartaSansSemiBold16RedA200
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.08))))))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalInfoScreen);
  }

  onTapPrivacy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.experienceSettingScreen);
  }

  onTapNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  onTapLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languageScreen);
  }

  onTapRowlocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyScreen);
  }

  onTapTxtLargelabelmediu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogoutPopupDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft12(BuildContext context) {
    Navigator.pop(context);
  }
}
