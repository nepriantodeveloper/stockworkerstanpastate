import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_image.dart';
import 'package:stockworkersmobile/widgets/app_bar/appbar_title.dart';
import 'package:stockworkersmobile/widgets/app_bar/custom_app_bar.dart';
import 'package:stockworkersmobile/widgets/custom_button.dart';
import 'package:stockworkersmobile/widgets/custom_drop_down.dart';
import 'package:stockworkersmobile/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddNewEducationScreen extends StatelessWidget {
  TextEditingController frameOneController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController frameOneTwoController = TextEditingController();

  TextEditingController frameOneThreeController = TextEditingController();

  TextEditingController frameOneFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft16(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add New Education")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 45, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("School",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frameOneController,
                                  hintText: "Ex: Harvard University",
                                  margin: getMargin(top: 9)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Degree",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 24),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray90002),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownGray90002)),
                                  hintText: "Ex: Bachelor",
                                  margin: getMargin(top: 7),
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Field of study",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frameOneTwoController,
                                  hintText: "Ex: Business",
                                  margin: getMargin(top: 7)),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Start Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              Container(
                                  margin: getMargin(top: 9),
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("Select Date",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getSize(24),
                                            width: getSize(24))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("End Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              Container(
                                  margin: getMargin(top: 9),
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Text("Select Date",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getSize(24),
                                            width: getSize(24))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Text("Grade",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frameOneThreeController,
                                  hintText: "Ex: Business",
                                  margin: getMargin(top: 9)),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("Description",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium14Bluegray900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.07)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: frameOneFourController,
                                  hintText: "Lorem ipsun",
                                  margin: getMargin(top: 7),
                                  padding: TextFormFieldPadding.PaddingT55,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 6)
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Save Changes",
                margin: getMargin(left: 24, right: 24, bottom: 37),
                padding: ButtonPadding.PaddingAll17,
                fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16Gray50,
                onTap: () {
                  onTapSavechanges(context);
                })));
  }

  onTapSavechanges(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.experienceSettingScreen);
  }

  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }
}
