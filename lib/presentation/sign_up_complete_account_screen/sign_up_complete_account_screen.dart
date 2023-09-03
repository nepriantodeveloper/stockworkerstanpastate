import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpCompleteAccountScreen extends StatelessWidget {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 13, right: 24, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 47, right: 15),
                              child: Text("Complete your account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.12))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 9),
                              child: Text("Lorem ipsum dolor sit amet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray400
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))))),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("First Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneController,
                          hintText: "Enter your first name",
                          margin: getMargin(top: 9),
                          padding: TextFormFieldPadding.PaddingT15),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Last Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneOneController,
                          hintText: "Enter your last name",
                          margin: getMargin(top: 9),
                          padding: TextFormFieldPadding.PaddingT15),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneTwoController,
                          hintText: "Create a password",
                          margin: getMargin(top: 9),
                          padding: TextFormFieldPadding.PaddingT15_1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 14, right: 16, bottom: 14),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52))),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.outlineIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Text("Select a country",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansMedium16Gray900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.08)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowrightGray900,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 1, bottom: 1))
                              ])),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Continue with Email",
                          margin: getMargin(top: 40),
                          padding: ButtonPadding.PaddingAll17,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold16Gray50),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 40, top: 28, right: 40),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansSemiBold16
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
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(245),
                              margin: getMargin(
                                  left: 40, top: 19, right: 40, bottom: 5),
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
                                            letterSpacing:
                                                getHorizontalSize(0.07)))
                                  ]),
                                  textAlign: TextAlign.center)))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
