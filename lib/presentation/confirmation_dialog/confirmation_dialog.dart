import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';

class ConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(331),
        padding: getPadding(left: 25, top: 39, right: 25, bottom: 39),
        decoration: AppDecoration.fillWhiteA70003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: getHorizontalSize(279),
                  margin: getMargin(top: 3),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text: "Conditions of Use",
                            style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08))),
                        TextSpan(
                            text:
                                " including consent to electronic communications and I affirm that the information provided is my own.",
                            style: TextStyle(
                                color: ColorConstant.blueGray400,
                                fontSize: getFontSize(16),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                letterSpacing: getHorizontalSize(0.08)))
                      ]),
                      textAlign: TextAlign.center)),
              CustomButton(
                  height: getVerticalSize(46),
                  width: getHorizontalSize(181),
                  text: "Agree and continue",
                  margin: getMargin(top: 21),
                  shape: ButtonShape.RoundedBorder20,
                  padding: ButtonPadding.PaddingAll16,
                  fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold14Gray50,
                  onTap: () {
                    onTapAgreeandcontinue(context);
                  }),
              Padding(
                  padding: getPadding(top: 28),
                  child: Text("Disgree",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansSemiBold14RedA200
                          .copyWith(letterSpacing: getHorizontalSize(0.07))))
            ]));
  }

  onTapAgreeandcontinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
