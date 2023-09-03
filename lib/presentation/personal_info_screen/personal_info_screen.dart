import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_title.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft13(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Personal Info"),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgEdit,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("First Name",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPlusJakartaSansMedium14.copyWith(
                              letterSpacing: getHorizontalSize(0.07))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneController,
                          hintText: "Gustavo",
                          margin: getMargin(top: 9)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Last Name",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneOneController,
                          hintText: "Lipshutz",
                          margin: getMargin(top: 9)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Email",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailOneController,
                          hintText: "xyz@gmail.com",
                          margin: getMargin(top: 9),
                          textInputType: TextInputType.emailAddress),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Phone ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: mobileNoController,
                          hintText: "+1 1234567890",
                          margin: getMargin(top: 9)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("Location",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium14
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.07)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameOneTwoController,
                          hintText: "Lorem ipsun",
                          margin: getMargin(top: 9, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT55,
                          textInputAction: TextInputAction.done,
                          maxLines: 6)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Save Changes",
                margin: getMargin(left: 24, right: 24, bottom: 44),
                variant: ButtonVariant.FillBluegray5001,
                padding: ButtonPadding.PaddingAll17,
                fontStyle:
                    ButtonFontStyle.PlusJakartaSansSemiBold16Bluegray300_1,
                onTap: () {
                  onBackPressed(context);
                })));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }
}
