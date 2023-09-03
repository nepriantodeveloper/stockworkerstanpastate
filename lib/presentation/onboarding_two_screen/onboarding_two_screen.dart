import '../onboarding_two_screen/widgets/slidermessage_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnboardingone),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 18, right: 24, bottom: 18),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtMediumlabelmedi(context);
                              },
                              child: Text("Skip",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansSemiBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07)))),
                          Container(
                              height: getVerticalSize(672),
                              width: getHorizontalSize(327),
                              margin: getMargin(top: 19, bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage369x306,
                                        height: getVerticalSize(369),
                                        width: getHorizontalSize(306),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(335),
                                            width: getHorizontalSize(327),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CarouselSlider.builder(
                                                      options: CarouselOptions(
                                                          height:
                                                              getVerticalSize(
                                                                  335),
                                                          initialPage: 0,
                                                          autoPlay: true,
                                                          viewportFraction: 1.0,
                                                          enableInfiniteScroll:
                                                              false,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          onPageChanged:
                                                              (index, reason) {
                                                            silderIndex = index;
                                                          }),
                                                      itemCount: 1,
                                                      itemBuilder: (context,
                                                          index, realIndex) {
                                                        return SlidermessageItemWidget(
                                                            onTapBtnNextstep:
                                                                () {
                                                          onTapBtnNextstep(
                                                              context);
                                                        });
                                                      }),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  10),
                                                          margin: getMargin(
                                                              bottom: 112),
                                                          child: AnimatedSmoothIndicator(
                                                              activeIndex:
                                                                  silderIndex,
                                                              count: 1,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              effect: ScrollingDotsEffect(
                                                                  spacing: 12,
                                                                  activeDotColor:
                                                                      ColorConstant
                                                                          .gray900,
                                                                  dotColor:
                                                                      ColorConstant
                                                                          .gray90068,
                                                                  dotHeight:
                                                                      getVerticalSize(
                                                                          10),
                                                                  dotWidth:
                                                                      getHorizontalSize(
                                                                          10)))))
                                                ])))
                                  ]))
                        ])))));
  }

  onTapBtnNextstep(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingThreeScreen);
  }

  onTapTxtMediumlabelmedi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCreateAcountScreen);
  }
}
