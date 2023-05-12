import 'package:faizan_s_application1/core/app_export.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:faizan_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:faizan_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatelessWidget {
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
            top: 254,
            bottom: 254,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: getMargin(
                    right: 17,
                    bottom: 86,
                  ),
                  padding: getPadding(
                    left: 50,
                    top: 51,
                    right: 50,
                    bottom: 51,
                  ),
                  decoration: AppDecoration.fillBlue300.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPicture1,
                        height: getSize(
                          50,
                        ),
                        width: getSize(
                          50,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 31,
                          bottom: 1,
                        ),
                        child: Text(
                          "Gallery",
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
                    left: 17,
                    bottom: 86,
                  ),
                  padding: getPadding(
                    left: 44,
                    top: 51,
                    right: 44,
                    bottom: 51,
                  ),
                  decoration: AppDecoration.fillIndigoA200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCamera1,
                        height: getSize(
                          50,
                        ),
                        width: getSize(
                          50,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 29,
                          bottom: 3,
                        ),
                        child: Text(
                          "Camera",
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
      ),
    );
  }
}
