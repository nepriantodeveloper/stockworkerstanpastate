import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_text_form_field.dart';
import 'package:stockworkersmobile/presentation/confirmation_dialog/confirmation_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SpeciallizationScreen extends StatelessWidget {
  TextEditingController group163009Controller = TextEditingController();

  TextEditingController group163010Controller = TextEditingController();

  TextEditingController group163011Controller = TextEditingController();

  TextEditingController group163012Controller = TextEditingController();

  TextEditingController group163013Controller = TextEditingController();

  TextEditingController group163014Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 13, right: 23, bottom: 13),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 1),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Container(
                          width: getHorizontalSize(177),
                          margin: getMargin(top: 44),
                          child: Text("What is your specialization?",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPlusJakartaSansBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.12)))),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("Lorem ipsum dolor sit amet, consectetur",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray400
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163009Controller,
                          hintText: "Design & Creative",
                          margin: getMargin(top: 31),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 16, bottom: 12),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray900),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163010Controller,
                          hintText: "Development & IT",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 17, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsIndigo5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163011Controller,
                          hintText: "Engineering & Architecture",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 17, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsIndigo5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163012Controller,
                          hintText: "Sales & Marketing",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 17, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsIndigo5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163013Controller,
                          hintText: "Writing",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 17, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsIndigo5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: group163014Controller,
                          hintText: "Finance",
                          margin: getMargin(top: 16, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT13,
                          fontStyle: TextFormFieldFontStyle
                              .PlusJakartaSansSemiBold16Gray900,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 17, bottom: 12),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSettingsIndigo5001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(48)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 39),
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
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ConfirmationDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }
}
