import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpCreateAcountScreen extends StatelessWidget {
  TextEditingController frameOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
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
                          padding: getPadding(top: 44),
                          child: Text("Create account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("Lorem ipsum dolor sit amet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium16
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.08)))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Continue with Google",
                          margin: getMargin(top: 28),
                          variant: ButtonVariant.OutlineGray900,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle
                              .PlusJakartaSansSemiBold16Gray900_1,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Continue with Apple",
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.OutlineGray900,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle
                              .PlusJakartaSansSemiBold16Gray900_1,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFire))),
                      Padding(
                          padding: getPadding(left: 33, top: 26, right: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(62),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50))),
                                Padding(
                                    padding: getPadding(left: 12),
                                    child: Text("Or continue with",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansSemiBold14Bluegray300
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.07)))),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 8),
                                    child: SizedBox(
                                        width: getHorizontalSize(74),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50,
                                            indent: getHorizontalSize(12))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 28),
                              child: Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneController,
                          hintText: "Enter your email address",
                          margin: getMargin(top: 9),
                          padding: TextFormFieldPadding.PaddingT15,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Continue with Email",
                          margin: getMargin(top: 40),
                          padding: ButtonPadding.PaddingAll17,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                          onTap: () {
                            onTapContinuewithemail(context);
                          }),
                      Padding(
                          padding: getPadding(left: 40, top: 28, right: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPlusJakartaSansSemiBold16
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.08))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogin(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 3),
                                        child: Text(" Login",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16Gray900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.08)))))
                              ])),
                      Container(
                          width: getHorizontalSize(245),
                          margin: getMargin(
                              left: 40, top: 84, right: 40, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "By signing up you agree to our ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(0.07))),
                                TextSpan(
                                    text: "Terms",
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(0.07))),
                                TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(0.07))),
                                TextSpan(
                                    text: "Conditions of Use",
                                    style: TextStyle(
                                        color: ColorConstant.gray90001,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(0.07)))
                              ]),
                              textAlign: TextAlign.center))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapContinuewithemail(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen);
  }

  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
