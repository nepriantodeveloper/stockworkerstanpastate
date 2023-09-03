import '../onboarding_three_screen/widgets/sliderapplicationsurely_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends StatelessWidget {
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
                        getPadding(left: 24, top: 29, right: 24, bottom: 29),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(699),
                              width: getHorizontalSize(327),
                              margin: getMargin(bottom: 5),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage422x313,
                                        height: getVerticalSize(422),
                                        width: getHorizontalSize(313),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(367),
                                            width: getHorizontalSize(327),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CarouselSlider.builder(
                                                      options: CarouselOptions(
                                                          height:
                                                              getVerticalSize(
                                                                  367),
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
                                                        return SliderapplicationsurelyItemWidget(
                                                            onTapBtnGetStarted:
                                                                () {
                                                          onTapBtnGetStarted(
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

  onTapBtnGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpCreateAcountScreen);
  }
}
