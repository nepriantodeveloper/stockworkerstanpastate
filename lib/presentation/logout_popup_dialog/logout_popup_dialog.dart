import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';

class LogoutPopupDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(306),
        padding: getPadding(all: 32),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgQuestion82x82,
                  height: getSize(82),
                  width: getSize(82),
                  margin: getMargin(top: 9)),
              Padding(
                  padding: getPadding(top: 35),
                  child: Text("Are You Sure?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansBold18
                          .copyWith(letterSpacing: getHorizontalSize(0.09)))),
              Container(
                  width: getHorizontalSize(229),
                  margin: getMargin(left: 6, top: 8, right: 5),
                  child: Text("Ullamcorper imperdiet urna id non sed est sem.",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPlusJakartaSansSemiBold14Bluegray400
                          .copyWith(letterSpacing: getHorizontalSize(0.07)))),
              Padding(
                  padding: getPadding(top: 25),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomButton(
                                height: getVerticalSize(46),
                                text: "Log Out",
                                margin: getMargin(right: 6),
                                variant: ButtonVariant.OutlineGray900,
                                shape: ButtonShape.RoundedBorder20,
                                padding: ButtonPadding.PaddingAll16,
                                fontStyle: ButtonFontStyle
                                    .PlusJakartaSansSemiBold14Gray900_1,
                                onTap: () {
                                  onTapLogout(context);
                                })),
                        Expanded(
                            child: CustomButton(
                                height: getVerticalSize(46),
                                text: "Cancel",
                                margin: getMargin(left: 6),
                                shape: ButtonShape.RoundedBorder20,
                                padding: ButtonPadding.PaddingAll16,
                                fontStyle: ButtonFontStyle
                                    .PlusJakartaSansSemiBold14Gray50,
                                onTap: () {
                                  onTapCancel(context);
                                }))
                      ]))
            ]));
  }

  onTapLogout(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.signUpCreateAcountScreen, (route) => false);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
