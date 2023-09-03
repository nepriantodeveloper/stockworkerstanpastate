import 'package:flutter/material.dart';
import 'package:stockworkersmobile/core/app_export.dart';

// ignore: must_be_immutable
class SlidermessageItemWidget extends StatelessWidget {
  SlidermessageItemWidget({this.onTapBtnNextstep});

  VoidCallback? onTapBtnNextstep;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 32,
          right: 24,
          bottom: 32,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getHorizontalSize(
                273,
              ),
              margin: getMargin(
                left: 6,
                top: 1,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Better ",
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: getHorizontalSize(
                          0.12,
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "future is starting from you",
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: getHorizontalSize(
                          0.12,
                        ),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getHorizontalSize(
                243,
              ),
              margin: getMargin(
                left: 17,
                top: 14,
                right: 17,
              ),
              child: Text(
                "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ",
                maxLines: null,
                textAlign: TextAlign.center,
                style:
                    AppStyle.txtPlusJakartaSansSemiBold14Bluegray300.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.07,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onTapBtnNextstep?.call();
              },
              child: Container(
                margin: getMargin(
                  top: 69,
                ),
                padding: getPadding(
                  left: 30,
                  top: 17,
                  right: 32,
                  bottom: 17,
                ),
                width: getHorizontalSize(
                  101,
                ),
                decoration: AppDecoration.fillDeeppurple400.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder28,
                ),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsMedium12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.08,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
