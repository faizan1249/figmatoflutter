import 'package:faizan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 18,
            right: 18,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 42,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar1,
                      height: getVerticalSize(
                        63,
                      ),
                      width: getHorizontalSize(
                        42,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 6,
                        bottom: 8,
                      ),
                      child: Text(
                        "Welcome!",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold32,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: getMargin(
                        right: 17,
                      ),
                      padding: getPadding(
                        left: 27,
                        top: 25,
                        right: 27,
                        bottom: 25,
                      ),
                      decoration: AppDecoration.fillIndigoA200.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEdit1,
                            height: getSize(
                              60,
                            ),
                            width: getSize(
                              60,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              117,
                            ),
                            margin: getMargin(
                              top: 23,
                              bottom: 23,
                            ),
                            child: Text(
                              "      Edit \nInformation",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular20WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: getMargin(
                        left: 17,
                      ),
                      padding: getPadding(
                        left: 37,
                        top: 25,
                        right: 37,
                        bottom: 25,
                      ),
                      decoration: AppDecoration.fillOrange300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCheck1,
                            height: getSize(
                              60,
                            ),
                            width: getSize(
                              60,
                            ),
                            margin: getMargin(
                              left: 14,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              97,
                            ),
                            margin: getMargin(
                              top: 23,
                              bottom: 18,
                            ),
                            child: Text(
                              "     Verify \n  Signature",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular20WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
