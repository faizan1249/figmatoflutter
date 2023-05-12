import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:faizan_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomePageOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            85,
          ),
          leadingWidth: 41,
          leading: AppbarImage(
            height: getVerticalSize(
              2,
            ),
            width: getHorizontalSize(
              22,
            ),
            svgPath: ImageConstant.imgArrow5,
            margin: getMargin(
              left: 19,
              top: 25,
              bottom: 28,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "Verify Signature",
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 25,
            top: 41,
            right: 25,
            bottom: 41,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGallery1,
                height: getVerticalSize(
                  343,
                ),
                width: getHorizontalSize(
                  346,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 2,
                  right: 9,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: getVerticalSize(
                        95,
                      ),
                      width: getHorizontalSize(
                        160,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 33,
                              ),
                              child: Text(
                                "Gallery",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20WhiteA700,
                              ),
                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              69,
                            ),
                            width: getHorizontalSize(
                              160,
                            ),
                            text: "Crop",
                            shape: ButtonShape.RoundedBorder17,
                            padding: ButtonPadding.PaddingAll19,
                            fontStyle: ButtonFontStyle.PoppinsRegular20,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        69,
                      ),
                      width: getHorizontalSize(
                        160,
                      ),
                      text: "Delete",
                      margin: getMargin(
                        top: 26,
                      ),
                      variant: ButtonVariant.FillBluegray500,
                      shape: ButtonShape.RoundedBorder17,
                      padding: ButtonPadding.PaddingAll19,
                      fontStyle: ButtonFontStyle.PoppinsRegular20,
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  273,
                ),
                margin: getMargin(
                  left: 46,
                  top: 59,
                  right: 45,
                ),
                padding: getPadding(
                  left: 2,
                  top: 4,
                  right: 2,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillBluegray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        158,
                      ),
                      margin: getMargin(
                        top: 1,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.greenA400,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  58,
                ),
                text: "Check",
                margin: getMargin(
                  top: 72,
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
