import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_title.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkersmobile/widgets/custom_radio_button.dart';
import 'package:stockworkersmobile/widgets/custom_search_view.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SelectACountryScreen extends StatelessWidget {
  TextEditingController frameOneController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = [
    "lbl_afghanistan",
    "lbl_albania",
    "lbl_algeria",
    "lbl_andorra",
    "lbl_angola",
    "msg_antigua_and_bar",
    "lbl_argentina",
    "lbl_argentina",
    "lbl_armenia",
    "lbl_australia",
    "lbl_austria",
    "lbl_azerbaijan",
    "lbl_azerbaijan"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 24, top: 13, bottom: 14),
                    onTap: () {
                      onTapClose(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Select a Country")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 13, right: 24, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: frameOneController,
                          hintText: "Search...",
                          margin: getMargin(top: 12),
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 17, right: 8, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    frameOneController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Column(children: [
                            CustomRadioButton(
                                text: "Afghanistan",
                                value: radioList[0],
                                groupValue: radioGroup,
                                margin: getMargin(right: 68),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Albania",
                                value: radioList[1],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 104),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Algeria\r",
                                value: radioList[2],
                                groupValue: radioGroup,
                                margin: getMargin(top: 24, right: 107),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Andorra",
                                value: radioList[3],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 99),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Angola",
                                value: radioList[4],
                                groupValue: radioGroup,
                                margin: getMargin(top: 24, right: 107),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Antigua and Barbuda\r",
                                value: radioList[5],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Argentina",
                                value: radioList[6],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 85),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Argentina",
                                value: radioList[7],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 85),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Armenia",
                                value: radioList[8],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 97),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Australia",
                                value: radioList[9],
                                groupValue: radioGroup,
                                margin: getMargin(top: 24, right: 94),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Austria",
                                value: radioList[10],
                                groupValue: radioGroup,
                                margin: getMargin(top: 24, right: 107),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Azerbaijan",
                                value: radioList[11],
                                groupValue: radioGroup,
                                margin: getMargin(top: 24, right: 80),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                text: "Azerbaijan",
                                value: radioList[12],
                                groupValue: radioGroup,
                                margin: getMargin(top: 22, right: 80),
                                fontStyle: RadioFontStyle
                                    .PlusJakartaSansSemiBold16Gray900,
                                onChange: (value) {
                                  radioGroup = value;
                                })
                          ]))
                    ]))));
  }

  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
