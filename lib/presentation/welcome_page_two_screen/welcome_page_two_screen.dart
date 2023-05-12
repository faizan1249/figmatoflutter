import 'package:faizan_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomePageTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 36,
            top: 32,
            right: 36,
            bottom: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLetterelogowith,
                height: getSize(
                  240,
                ),
                width: getSize(
                  240,
                ),
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  right: 2,
                  bottom: 205,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: getMargin(
                          right: 22,
                        ),
                        padding: getPadding(
                          left: 36,
                          top: 14,
                          right: 36,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.fillIndigoA200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAdmin1,
                              height: getSize(
                                75,
                              ),
                              width: getSize(
                                75,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 29,
                                bottom: 15,
                              ),
                              child: Text(
                                "Admin",
                                overflow: TextOverflow.ellipsis,
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
                          left: 22,
                        ),
                        padding: getPadding(
                          left: 24,
                          top: 26,
                          right: 24,
                          bottom: 26,
                        ),
                        decoration: AppDecoration.fillBlue300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgDivision1,
                              height: getSize(
                                75,
                              ),
                              width: getSize(
                                75,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Text(
                                "Employee",
                                overflow: TextOverflow.ellipsis,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
